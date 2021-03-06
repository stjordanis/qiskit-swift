// Copyright 2017 IBM RESEARCH. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
// =============================================================================


import Foundation

/**
 Exception for errors raised by the Coupling object.
 */
public enum CouplingError: LocalizedError, CustomStringConvertible {
    case duplicateregbit(regBit: RegBit)
    case notconnected
    case distancenotcomputed
    case notincouplinggraph(regBit: RegBit)

    public var errorDescription: String? {
        return self.description
    }
    public var description: String {
        switch self {
        case .duplicateregbit(let regBit):
            return "'\(regBit.description)' already in coupling graph"
        case .notconnected:
            return "coupling graph not connected"
        case .distancenotcomputed:
            return "distance has not been computed"
        case .notincouplinggraph(let regBit):
            return "'\(regBit.description)' not in coupling graph"
        }
    }
}

