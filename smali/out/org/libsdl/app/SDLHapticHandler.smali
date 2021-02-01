.class Lorg/libsdl/app/SDLHapticHandler;
.super Ljava/lang/Object;
.source "SDLControllerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;
    }
.end annotation


# instance fields
.field private mHaptics:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 456
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 457
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/libsdl/app/SDLHapticHandler;->mHaptics:Ljava/util/ArrayList;

    .line 458
    return-void
.end method


# virtual methods
.method protected getHaptic(I)Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;
    .registers 4
    .param p1, "device_id"    # I

    .line 555
    const/4 v0, 0x0

    .line 555
    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lorg/libsdl/app/SDLHapticHandler;->mHaptics:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_21

    .line 556
    iget-object v1, p0, Lorg/libsdl/app/SDLHapticHandler;->mHaptics:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;

    iget v1, v1, Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;->device_id:I

    if-ne v1, p1, :cond_1e

    .line 557
    iget-object v1, p0, Lorg/libsdl/app/SDLHapticHandler;->mHaptics:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;

    return-object v1

    .line 555
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 560
    .end local v0    # "i":I
    :cond_21
    const/4 v0, 0x0

    return-object v0
.end method

.method public pollHapticDevices()V
    .registers 12

    .line 476
    const v0, 0xf423f

    .line 477
    .local v0, "deviceId_VIBRATOR_SERVICE":I
    const/4 v1, 0x0

    .line 479
    .local v1, "hasVibratorService":Z
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v2

    .line 485
    .local v2, "deviceIds":[I
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_4d

    .line 487
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    .line 487
    .local v3, "i":I
    :goto_11
    const/4 v4, -0x1

    if-le v3, v4, :cond_4d

    .line 488
    aget v4, v2, v3

    invoke-virtual {p0, v4}, Lorg/libsdl/app/SDLHapticHandler;->getHaptic(I)Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;

    move-result-object v4

    .line 489
    .local v4, "haptic":Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;
    if-nez v4, :cond_4a

    .line 490
    aget v5, v2, v3

    invoke-static {v5}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v5

    .line 491
    .local v5, "device":Landroid/view/InputDevice;
    invoke-virtual {v5}, Landroid/view/InputDevice;->getVibrator()Landroid/os/Vibrator;

    move-result-object v6

    .line 492
    .local v6, "vib":Landroid/os/Vibrator;
    invoke-virtual {v6}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v7

    if-eqz v7, :cond_4a

    .line 493
    new-instance v7, Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;

    invoke-direct {v7, p0}, Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;-><init>(Lorg/libsdl/app/SDLHapticHandler;)V

    move-object v4, v7

    .line 494
    aget v7, v2, v3

    iput v7, v4, Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;->device_id:I

    .line 495
    invoke-virtual {v5}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;->name:Ljava/lang/String;

    .line 496
    iput-object v6, v4, Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;->vib:Landroid/os/Vibrator;

    .line 497
    iget-object v7, p0, Lorg/libsdl/app/SDLHapticHandler;->mHaptics:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 498
    iget v7, v4, Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;->device_id:I

    iget-object v8, v4, Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;->name:Ljava/lang/String;

    invoke-static {v7, v8}, Lorg/libsdl/app/SDLControllerManager;->nativeAddHaptic(ILjava/lang/String;)I

    .line 487
    .end local v4    # "haptic":Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;
    .end local v5    # "device":Landroid/view/InputDevice;
    .end local v6    # "vib":Landroid/os/Vibrator;
    :cond_4a
    add-int/lit8 v3, v3, -0x1

    goto :goto_11

    .line 505
    .end local v3    # "i":I
    :cond_4d
    invoke-static {}, Lorg/libsdl/app/SDL;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "vibrator"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Vibrator;

    .line 506
    .local v3, "vib":Landroid/os/Vibrator;
    const v4, 0xf423f

    if-eqz v3, :cond_8c

    .line 507
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xb

    if-lt v5, v6, :cond_69

    .line 508
    invoke-virtual {v3}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v1

    goto :goto_6a

    .line 510
    :cond_69
    const/4 v1, 0x1

    .line 513
    :goto_6a
    if-eqz v1, :cond_8c

    .line 514
    invoke-virtual {p0, v4}, Lorg/libsdl/app/SDLHapticHandler;->getHaptic(I)Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;

    move-result-object v5

    .line 515
    .local v5, "haptic":Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;
    if-nez v5, :cond_8c

    .line 516
    new-instance v6, Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;

    invoke-direct {v6, p0}, Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;-><init>(Lorg/libsdl/app/SDLHapticHandler;)V

    move-object v5, v6

    .line 517
    iput v4, v5, Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;->device_id:I

    .line 518
    const-string v6, "VIBRATOR_SERVICE"

    iput-object v6, v5, Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;->name:Ljava/lang/String;

    .line 519
    iput-object v3, v5, Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;->vib:Landroid/os/Vibrator;

    .line 520
    iget-object v6, p0, Lorg/libsdl/app/SDLHapticHandler;->mHaptics:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 521
    iget v6, v5, Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;->device_id:I

    iget-object v7, v5, Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;->name:Ljava/lang/String;

    invoke-static {v6, v7}, Lorg/libsdl/app/SDLControllerManager;->nativeAddHaptic(ILjava/lang/String;)I

    .line 527
    .end local v5    # "haptic":Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;
    :cond_8c
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 528
    .local v5, "removedDevices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 528
    .local v7, "i":I
    :goto_93
    iget-object v8, p0, Lorg/libsdl/app/SDLHapticHandler;->mHaptics:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_c3

    .line 529
    iget-object v8, p0, Lorg/libsdl/app/SDLHapticHandler;->mHaptics:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;

    iget v8, v8, Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;->device_id:I

    .line 531
    .local v8, "device_id":I
    const/4 v9, 0x0

    .line 531
    .local v9, "j":I
    :goto_a6
    array-length v10, v2

    if-ge v9, v10, :cond_b1

    .line 532
    aget v10, v2, v9

    if-ne v8, v10, :cond_ae

    goto :goto_b1

    .line 531
    :cond_ae
    add-int/lit8 v9, v9, 0x1

    goto :goto_a6

    .line 535
    :cond_b1
    :goto_b1
    if-ne v8, v4, :cond_b6

    if-eqz v1, :cond_b6

    .line 535
    .end local v8    # "device_id":I
    .end local v9    # "j":I
    goto :goto_c0

    .line 537
    .restart local v8    # "device_id":I
    .restart local v9    # "j":I
    :cond_b6
    array-length v10, v2

    if-ne v9, v10, :cond_c0

    .line 538
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 528
    .end local v8    # "device_id":I
    .end local v9    # "j":I
    :cond_c0
    :goto_c0
    add-int/lit8 v7, v7, 0x1

    goto :goto_93

    .line 542
    .end local v7    # "i":I
    :cond_c3
    const/4 v4, 0x0

    .line 542
    .local v4, "i":I
    :goto_c4
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v4, v7, :cond_f8

    .line 543
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 544
    .local v7, "device_id":I
    invoke-static {v7}, Lorg/libsdl/app/SDLControllerManager;->nativeRemoveHaptic(I)I

    .line 545
    const/4 v8, 0x0

    .line 545
    .local v8, "j":I
    :goto_d8
    iget-object v9, p0, Lorg/libsdl/app/SDLHapticHandler;->mHaptics:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_f5

    .line 546
    iget-object v9, p0, Lorg/libsdl/app/SDLHapticHandler;->mHaptics:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;

    iget v9, v9, Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;->device_id:I

    if-ne v9, v7, :cond_f2

    .line 547
    iget-object v9, p0, Lorg/libsdl/app/SDLHapticHandler;->mHaptics:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 548
    goto :goto_f5

    .line 545
    :cond_f2
    add-int/lit8 v8, v8, 0x1

    goto :goto_d8

    .line 542
    .end local v7    # "device_id":I
    .end local v8    # "j":I
    :cond_f5
    :goto_f5
    add-int/lit8 v4, v4, 0x1

    goto :goto_c4

    .line 552
    .end local v4    # "i":I
    :cond_f8
    return-void
.end method

.method public run(IFI)V
    .registers 8
    .param p1, "device_id"    # I
    .param p2, "intensity"    # F
    .param p3, "length"    # I

    .line 461
    invoke-virtual {p0, p1}, Lorg/libsdl/app/SDLHapticHandler;->getHaptic(I)Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;

    move-result-object v0

    .line 462
    .local v0, "haptic":Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;
    if-eqz v0, :cond_c

    .line 463
    iget-object v1, v0, Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;->vib:Landroid/os/Vibrator;

    int-to-long v2, p3

    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 465
    :cond_c
    return-void
.end method

.method public stop(I)V
    .registers 4
    .param p1, "device_id"    # I

    .line 468
    invoke-virtual {p0, p1}, Lorg/libsdl/app/SDLHapticHandler;->getHaptic(I)Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;

    move-result-object v0

    .line 469
    .local v0, "haptic":Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;
    if-eqz v0, :cond_b

    .line 470
    iget-object v1, v0, Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;->vib:Landroid/os/Vibrator;

    invoke-virtual {v1}, Landroid/os/Vibrator;->cancel()V

    .line 472
    :cond_b
    return-void
.end method
