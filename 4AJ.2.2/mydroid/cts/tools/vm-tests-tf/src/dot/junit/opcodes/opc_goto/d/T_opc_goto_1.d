; Copyright (C) 2008 The Android Open Source Project
;
; Licensed under the Apache License, Version 2.0 (the "License");
; you may not use this file except in compliance with the License.
; You may obtain a copy of the License at
;
;      http://www.apache.org/licenses/LICENSE-2.0
;
; Unless required by applicable law or agreed to in writing, software
; distributed under the License is distributed on an "AS IS" BASIS,
; WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
; See the License for the specific language governing permissions and
; limitations under the License.

.source T_opc_goto_1.java
.class public dot.junit.opcodes.opc_goto.d.T_opc_goto_1
.super java/lang/Object


.method public <init>()V
.limit regs 1

       invoke-direct {v0}, java/lang/Object/<init>()V
       return-void
.end method

.method public run(I)I
.limit regs 5
; test positive offset
      goto Label2
LabelReturn:      
      return v4
      
Label2:
       add-int/lit8 v4, v4, -1
       if-lez v4, LabelExit
; test negative offset       
       goto Label2
       
LabelExit:       
       goto LabelReturn
.end method


