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
package android.automotive.computepipe.runner;

/**
 * types of packet
 */
@Backing(type="int")
enum PacketDescriptorPacketType {
    /**
     * General semantic data derived from input stream
     */
    SEMANTIC_DATA = 0,
    /**
     * Pixel data generated, for eg annotated frames
     */
    PIXEL_DATA,
    /**
     * Pixel data with zero copy semantics
     */
    PIXEL_ZERO_COPY_DATA,
}