/*
 * Copyright (C) 2019 The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package android.automotive.computepipe.registry;

import android.automotive.computepipe.runner.IPipeRunner;

/**
 * Provides mechanism for graph/pipe runner to register with router.
 */
interface IPipeRegistration {
    // Ignoring result android.automotive.computepipe.void status since AIDL has built in status types.
    /**
     * Returns a successful registration
     * A runner will reigster itself as supporting a graph only once.
     *
     * @param graphName: Graph id for which runner and debugger are registered
     * @param runner: Graph runner for associated graph.
     * @return: returns ok if successful
     */
    void registerPipeRunner(in @utf8InCpp String graphName, IPipeRunner graphRunner);
}
