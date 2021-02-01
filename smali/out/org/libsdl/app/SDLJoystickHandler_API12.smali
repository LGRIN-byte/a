.class Lorg/libsdl/app/SDLJoystickHandler_API12;
.super Lorg/libsdl/app/SDLJoystickHandler;
.source "SDLControllerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/libsdl/app/SDLJoystickHandler_API12$RangeComparator;,
        Lorg/libsdl/app/SDLJoystickHandler_API12$SDLJoystick;
    }
.end annotation


# instance fields
.field private mJoysticks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/libsdl/app/SDLJoystickHandler_API12$SDLJoystick;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 177
    invoke-direct {p0}, Lorg/libsdl/app/SDLJoystickHandler;-><init>()V

    .line 179
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/libsdl/app/SDLJoystickHandler_API12;->mJoysticks:Ljava/util/ArrayList;

    .line 180
    return-void
.end method


# virtual methods
.method public getButtonMask(Landroid/view/InputDevice;)I
    .registers 3
    .param p1, "joystickDevice"    # Landroid/view/InputDevice;

    .line 290
    const/4 v0, -0x1

    return v0
.end method

.method protected getJoystick(I)Lorg/libsdl/app/SDLJoystickHandler_API12$SDLJoystick;
    .registers 4
    .param p1, "device_id"    # I

    .line 243
    const/4 v0, 0x0

    .line 243
    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lorg/libsdl/app/SDLJoystickHandler_API12;->mJoysticks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_21

    .line 244
    iget-object v1, p0, Lorg/libsdl/app/SDLJoystickHandler_API12;->mJoysticks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/libsdl/app/SDLJoystickHandler_API12$SDLJoystick;

    iget v1, v1, Lorg/libsdl/app/SDLJoystickHandler_API12$SDLJoystick;->device_id:I

    if-ne v1, p1, :cond_1e

    .line 245
    iget-object v1, p0, Lorg/libsdl/app/SDLJoystickHandler_API12;->mJoysticks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/libsdl/app/SDLJoystickHandler_API12$SDLJoystick;

    return-object v1

    .line 243
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 248
    .end local v0    # "i":I
    :cond_21
    const/4 v0, 0x0

    return-object v0
.end method

.method public getJoystickDescriptor(Landroid/view/InputDevice;)Ljava/lang/String;
    .registers 3
    .param p1, "joystickDevice"    # Landroid/view/InputDevice;

    .line 281
    invoke-virtual {p1}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProductId(Landroid/view/InputDevice;)I
    .registers 3
    .param p1, "joystickDevice"    # Landroid/view/InputDevice;

    .line 284
    const/4 v0, 0x0

    return v0
.end method

.method public getVendorId(Landroid/view/InputDevice;)I
    .registers 3
    .param p1, "joystickDevice"    # Landroid/view/InputDevice;

    .line 287
    const/4 v0, 0x0

    return v0
.end method

.method public handleMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 253
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    const v1, 0x1000010

    and-int/2addr v0, v1

    if-eqz v0, :cond_91

    .line 254
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 255
    .local v0, "actionPointerIndex":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    .line 256
    .local v1, "action":I
    const/4 v2, 0x2

    if-eq v1, v2, :cond_17

    .line 256
    .end local v0    # "actionPointerIndex":I
    .end local v1    # "action":I
    goto/16 :goto_91

    .line 258
    .restart local v0    # "actionPointerIndex":I
    .restart local v1    # "action":I
    :cond_17
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/libsdl/app/SDLJoystickHandler_API12;->getJoystick(I)Lorg/libsdl/app/SDLJoystickHandler_API12$SDLJoystick;

    move-result-object v2

    .line 259
    .local v2, "joystick":Lorg/libsdl/app/SDLJoystickHandler_API12$SDLJoystick;
    if-eqz v2, :cond_91

    .line 260
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 260
    .local v4, "i":I
    :goto_23
    iget-object v5, v2, Lorg/libsdl/app/SDLJoystickHandler_API12$SDLJoystick;->axes:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_54

    .line 261
    iget-object v5, v2, Lorg/libsdl/app/SDLJoystickHandler_API12$SDLJoystick;->axes:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/InputDevice$MotionRange;

    .line 263
    .local v5, "range":Landroid/view/InputDevice$MotionRange;
    invoke-virtual {v5}, Landroid/view/InputDevice$MotionRange;->getAxis()I

    move-result v6

    invoke-virtual {p1, v6, v0}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v6

    invoke-virtual {v5}, Landroid/view/InputDevice$MotionRange;->getMin()F

    move-result v7

    sub-float/2addr v6, v7

    invoke-virtual {v5}, Landroid/view/InputDevice$MotionRange;->getRange()F

    move-result v7

    div-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    mul-float v6, v6, v7

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float/2addr v6, v7

    .line 264
    .local v6, "value":F
    iget v7, v2, Lorg/libsdl/app/SDLJoystickHandler_API12$SDLJoystick;->device_id:I

    invoke-static {v7, v4, v6}, Lorg/libsdl/app/SDLControllerManager;->onNativeJoy(IIF)V

    .line 260
    .end local v5    # "range":Landroid/view/InputDevice$MotionRange;
    .end local v6    # "value":F
    add-int/lit8 v4, v4, 0x1

    goto :goto_23

    .line 266
    .end local v4    # "i":I
    :cond_54
    nop

    .line 266
    .local v3, "i":I
    :goto_55
    iget-object v4, v2, Lorg/libsdl/app/SDLJoystickHandler_API12$SDLJoystick;->hats:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_91

    .line 267
    iget-object v4, v2, Lorg/libsdl/app/SDLJoystickHandler_API12$SDLJoystick;->hats:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/InputDevice$MotionRange;

    invoke-virtual {v4}, Landroid/view/InputDevice$MotionRange;->getAxis()I

    move-result v4

    invoke-virtual {p1, v4, v0}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 268
    .local v4, "hatX":I
    iget-object v5, v2, Lorg/libsdl/app/SDLJoystickHandler_API12$SDLJoystick;->hats:Ljava/util/ArrayList;

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/InputDevice$MotionRange;

    invoke-virtual {v5}, Landroid/view/InputDevice$MotionRange;->getAxis()I

    move-result v5

    invoke-virtual {p1, v5, v0}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 269
    .local v5, "hatY":I
    iget v6, v2, Lorg/libsdl/app/SDLJoystickHandler_API12$SDLJoystick;->device_id:I

    div-int/lit8 v7, v3, 0x2

    invoke-static {v6, v7, v4, v5}, Lorg/libsdl/app/SDLControllerManager;->onNativeHat(IIII)V

    .line 266
    .end local v4    # "hatX":I
    .end local v5    # "hatY":I
    add-int/lit8 v3, v3, 0x2

    goto :goto_55

    .line 277
    .end local v0    # "actionPointerIndex":I
    .end local v1    # "action":I
    .end local v2    # "joystick":Lorg/libsdl/app/SDLJoystickHandler_API12$SDLJoystick;
    .end local v3    # "i":I
    :cond_91
    :goto_91
    const/4 v0, 0x1

    return v0
.end method

.method public pollInputDevices()V
    .registers 19

    .line 184
    move-object/from16 v0, p0

    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v1

    .line 185
    .local v1, "deviceIds":[I
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 185
    .local v3, "i":I
    :goto_8
    array-length v4, v1

    if-ge v3, v4, :cond_b4

    .line 186
    aget v4, v1, v3

    invoke-virtual {v0, v4}, Lorg/libsdl/app/SDLJoystickHandler_API12;->getJoystick(I)Lorg/libsdl/app/SDLJoystickHandler_API12$SDLJoystick;

    move-result-object v4

    .line 187
    .local v4, "joystick":Lorg/libsdl/app/SDLJoystickHandler_API12$SDLJoystick;
    if-nez v4, :cond_b0

    .line 188
    new-instance v5, Lorg/libsdl/app/SDLJoystickHandler_API12$SDLJoystick;

    invoke-direct {v5}, Lorg/libsdl/app/SDLJoystickHandler_API12$SDLJoystick;-><init>()V

    move-object v4, v5

    .line 189
    aget v5, v1, v3

    invoke-static {v5}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v5

    .line 190
    .local v5, "joystickDevice":Landroid/view/InputDevice;
    aget v6, v1, v3

    invoke-static {v6}, Lorg/libsdl/app/SDLControllerManager;->isDeviceSDLJoystick(I)Z

    move-result v6

    if-eqz v6, :cond_b0

    .line 191
    aget v6, v1, v3

    iput v6, v4, Lorg/libsdl/app/SDLJoystickHandler_API12$SDLJoystick;->device_id:I

    .line 192
    invoke-virtual {v5}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lorg/libsdl/app/SDLJoystickHandler_API12$SDLJoystick;->name:Ljava/lang/String;

    .line 193
    invoke-virtual {v0, v5}, Lorg/libsdl/app/SDLJoystickHandler_API12;->getJoystickDescriptor(Landroid/view/InputDevice;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lorg/libsdl/app/SDLJoystickHandler_API12$SDLJoystick;->desc:Ljava/lang/String;

    .line 194
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v4, Lorg/libsdl/app/SDLJoystickHandler_API12$SDLJoystick;->axes:Ljava/util/ArrayList;

    .line 195
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v4, Lorg/libsdl/app/SDLJoystickHandler_API12$SDLJoystick;->hats:Ljava/util/ArrayList;

    .line 197
    invoke-virtual {v5}, Landroid/view/InputDevice;->getMotionRanges()Ljava/util/List;

    move-result-object v6

    .line 198
    .local v6, "ranges":Ljava/util/List;, "Ljava/util/List<Landroid/view/InputDevice$MotionRange;>;"
    new-instance v7, Lorg/libsdl/app/SDLJoystickHandler_API12$RangeComparator;

    invoke-direct {v7}, Lorg/libsdl/app/SDLJoystickHandler_API12$RangeComparator;-><init>()V

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 199
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_55
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_85

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/InputDevice$MotionRange;

    .line 200
    .local v8, "range":Landroid/view/InputDevice$MotionRange;
    invoke-virtual {v8}, Landroid/view/InputDevice$MotionRange;->getSource()I

    move-result v9

    const/16 v10, 0x10

    and-int/2addr v9, v10

    if-eqz v9, :cond_84

    .line 201
    invoke-virtual {v8}, Landroid/view/InputDevice$MotionRange;->getAxis()I

    move-result v9

    const/16 v11, 0xf

    if-eq v9, v11, :cond_7f

    .line 202
    invoke-virtual {v8}, Landroid/view/InputDevice$MotionRange;->getAxis()I

    move-result v9

    if-ne v9, v10, :cond_79

    goto :goto_7f

    .line 206
    :cond_79
    iget-object v9, v4, Lorg/libsdl/app/SDLJoystickHandler_API12$SDLJoystick;->axes:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    .end local v8    # "range":Landroid/view/InputDevice$MotionRange;
    goto :goto_84

    .line 203
    .restart local v8    # "range":Landroid/view/InputDevice$MotionRange;
    :cond_7f
    :goto_7f
    iget-object v9, v4, Lorg/libsdl/app/SDLJoystickHandler_API12$SDLJoystick;->hats:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    .end local v8    # "range":Landroid/view/InputDevice$MotionRange;
    :cond_84
    :goto_84
    goto :goto_55

    .line 211
    :cond_85
    iget-object v7, v0, Lorg/libsdl/app/SDLJoystickHandler_API12;->mJoysticks:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    iget v8, v4, Lorg/libsdl/app/SDLJoystickHandler_API12$SDLJoystick;->device_id:I

    iget-object v9, v4, Lorg/libsdl/app/SDLJoystickHandler_API12$SDLJoystick;->name:Ljava/lang/String;

    iget-object v10, v4, Lorg/libsdl/app/SDLJoystickHandler_API12$SDLJoystick;->desc:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lorg/libsdl/app/SDLJoystickHandler_API12;->getVendorId(Landroid/view/InputDevice;)I

    move-result v11

    invoke-virtual {v0, v5}, Lorg/libsdl/app/SDLJoystickHandler_API12;->getProductId(Landroid/view/InputDevice;)I

    move-result v12

    const/4 v13, 0x0

    invoke-virtual {v0, v5}, Lorg/libsdl/app/SDLJoystickHandler_API12;->getButtonMask(Landroid/view/InputDevice;)I

    move-result v14

    iget-object v7, v4, Lorg/libsdl/app/SDLJoystickHandler_API12$SDLJoystick;->axes:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v15

    iget-object v7, v4, Lorg/libsdl/app/SDLJoystickHandler_API12$SDLJoystick;->hats:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    div-int/lit8 v16, v7, 0x2

    const/16 v17, 0x0

    invoke-static/range {v8 .. v17}, Lorg/libsdl/app/SDLControllerManager;->nativeAddJoystick(ILjava/lang/String;Ljava/lang/String;IIZIIII)I

    .line 185
    .end local v4    # "joystick":Lorg/libsdl/app/SDLJoystickHandler_API12$SDLJoystick;
    .end local v5    # "joystickDevice":Landroid/view/InputDevice;
    .end local v6    # "ranges":Ljava/util/List;, "Ljava/util/List<Landroid/view/InputDevice$MotionRange;>;"
    :cond_b0
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_8

    .line 218
    .end local v3    # "i":I
    :cond_b4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 219
    .local v3, "removedDevices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v4, 0x0

    .line 219
    .local v4, "i":I
    :goto_ba
    iget-object v5, v0, Lorg/libsdl/app/SDLJoystickHandler_API12;->mJoysticks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_e5

    .line 220
    iget-object v5, v0, Lorg/libsdl/app/SDLJoystickHandler_API12;->mJoysticks:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/libsdl/app/SDLJoystickHandler_API12$SDLJoystick;

    iget v5, v5, Lorg/libsdl/app/SDLJoystickHandler_API12$SDLJoystick;->device_id:I

    .line 222
    .local v5, "device_id":I
    const/4 v6, 0x0

    .line 222
    .local v6, "j":I
    :goto_cd
    array-length v7, v1

    if-ge v6, v7, :cond_d8

    .line 223
    aget v7, v1, v6

    if-ne v5, v7, :cond_d5

    goto :goto_d8

    .line 222
    :cond_d5
    add-int/lit8 v6, v6, 0x1

    goto :goto_cd

    .line 225
    :cond_d8
    :goto_d8
    array-length v7, v1

    if-ne v6, v7, :cond_e2

    .line 226
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    .end local v5    # "device_id":I
    .end local v6    # "j":I
    :cond_e2
    add-int/lit8 v4, v4, 0x1

    goto :goto_ba

    .line 230
    .end local v4    # "i":I
    :cond_e5
    const/4 v4, 0x0

    .line 230
    .restart local v4    # "i":I
    :goto_e6
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_11a

    .line 231
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 232
    .restart local v5    # "device_id":I
    invoke-static {v5}, Lorg/libsdl/app/SDLControllerManager;->nativeRemoveJoystick(I)I

    .line 233
    const/4 v6, 0x0

    .line 233
    .restart local v6    # "j":I
    :goto_fa
    iget-object v7, v0, Lorg/libsdl/app/SDLJoystickHandler_API12;->mJoysticks:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_117

    .line 234
    iget-object v7, v0, Lorg/libsdl/app/SDLJoystickHandler_API12;->mJoysticks:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/libsdl/app/SDLJoystickHandler_API12$SDLJoystick;

    iget v7, v7, Lorg/libsdl/app/SDLJoystickHandler_API12$SDLJoystick;->device_id:I

    if-ne v7, v5, :cond_114

    .line 235
    iget-object v7, v0, Lorg/libsdl/app/SDLJoystickHandler_API12;->mJoysticks:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 236
    goto :goto_117

    .line 233
    :cond_114
    add-int/lit8 v6, v6, 0x1

    goto :goto_fa

    .line 230
    .end local v5    # "device_id":I
    .end local v6    # "j":I
    :cond_117
    :goto_117
    add-int/lit8 v4, v4, 0x1

    goto :goto_e6

    .line 240
    .end local v4    # "i":I
    :cond_11a
    return-void
.end method
