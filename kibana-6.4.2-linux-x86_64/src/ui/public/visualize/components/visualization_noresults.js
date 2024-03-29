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
const tslib_1 = require("tslib");
const react_1 = tslib_1.__importDefault(require("react"));
class VisualizationNoResults extends react_1.default.Component {
    render() {
        return (react_1.default.createElement("div", { className: "text-center visualize-error visualize-chart" },
            react_1.default.createElement("div", { className: "item top" }),
            react_1.default.createElement("div", { className: "item" },
                react_1.default.createElement("h2", { "aria-hidden": "true" },
                    react_1.default.createElement("i", { "aria-hidden": "true", className: "fa fa-meh-o" })),
                react_1.default.createElement("h4", null, "No results found")),
            react_1.default.createElement("div", { className: "item bottom" })));
    }
    componentDidMount() {
        if (this.props.onInit) {
            this.props.onInit();
        }
    }
    componentDidUpdate() {
        if (this.props.onInit) {
            this.props.onInit();
        }
    }
}
exports.VisualizationNoResults = VisualizationNoResults;
