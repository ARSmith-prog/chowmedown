"use strict";
/*
 * Licensed to Elasticsearch B.V. under one or more contributor
 * license agreements. See the NOTICE file distributed with
 * this work for additional information regarding copyright
 * ownership. Elasticsearch B.V. licenses this file to you under
 * the Apache License, Version 2.0 (the "License"); you may
 * not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *    http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing,
 * software distributed under the License is distributed on an
 * "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 * KIND, either express or implied.  See the License for the
 * specific language governing permissions and limitations
 * under the License.
 */
Object.defineProperty(exports, "__esModule", { value: true });
/**
 * The LegacyPlatformService is responsible for initializing
 * the legacy platform by injecting parts of the new platform
 * services into the legacy platform modules, like ui/modules,
 * and then bootstraping the ui/chrome or ui/test_harness to
 * start either the app or browser tests.
 */
class LegacyPlatformService {
    constructor(params) {
        this.params = params;
    }
    start({ injectedMetadata }) {
        // Inject parts of the new platform into parts of the legacy platform
        // so that legacy APIs/modules can mimic their new platform counterparts
        require('ui/metadata').__newPlatformInit__(injectedMetadata.getLegacyMetadata());
        // Load the bootstrap module before loading the legacy platform files so that
        // the bootstrap module can modify the environment a bit first
        const bootstrapModule = this.loadBootstrapModule();
        // require the files that will tie into the legacy platform
        this.params.requireLegacyFiles();
        bootstrapModule.bootstrap(this.params.rootDomElement);
    }
    loadBootstrapModule() {
        if (this.params.useLegacyTestHarness) {
            // wrapped in NODE_ENV check so the `ui/test_harness` module
            // is not included in the distributable
            if (process.env.IS_KIBANA_DISTRIBUTABLE !== 'true') {
                return require('ui/test_harness');
            }
            throw new Error('tests bundle is not available in the distributable');
        }
        return require('ui/chrome');
    }
}
exports.LegacyPlatformService = LegacyPlatformService;
