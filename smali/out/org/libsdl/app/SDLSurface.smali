.class Lorg/libsdl/app/SDLSurface;
.super Landroid/view/SurfaceView;
.source "SDLActivity.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/hardware/SensorEventListener;


# static fields
.field protected static mDisplay:Landroid/view/Display;

.field protected static mHeight:F

.field protected static mSensorManager:Landroid/hardware/SensorManager;

.field protected static mWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 1532
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 1533
    invoke-virtual {p0}, Lorg/libsdl/app/SDLSurface;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 1535
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/libsdl/app/SDLSurface;->setFocusable(Z)V

    .line 1536
    invoke-virtual {p0, v0}, Lorg/libsdl/app/SDLSurface;->setFocusableInTouchMode(Z)V

    .line 1537
    invoke-virtual {p0}, Lorg/libsdl/app/SDLSurface;->requestFocus()Z

    .line 1538
    invoke-virtual {p0, p0}, Lorg/libsdl/app/SDLSurface;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1539
    invoke-virtual {p0, p0}, Lorg/libsdl/app/SDLSurface;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1541
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    sput-object v0, Lorg/libsdl/app/SDLSurface;->mDisplay:Landroid/view/Display;

    .line 1542
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    sput-object v0, Lorg/libsdl/app/SDLSurface;->mSensorManager:Landroid/hardware/SensorManager;

    .line 1544
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_3f

    .line 1545
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->getMotionListener()Lorg/libsdl/app/SDLGenericMotionListener_API12;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/libsdl/app/SDLSurface;->setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V

    .line 1549
    :cond_3f
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lorg/libsdl/app/SDLSurface;->mWidth:F

    .line 1550
    sput v0, Lorg/libsdl/app/SDLSurface;->mHeight:F

    .line 1551
    return-void
.end method


# virtual methods
.method public enableSensor(IZ)V
    .registers 7
    .param p1, "sensortype"    # I
    .param p2, "enabled"    # Z

    .line 1867
    if-eqz p2, :cond_10

    .line 1868
    sget-object v0, Lorg/libsdl/app/SDLSurface;->mSensorManager:Landroid/hardware/SensorManager;

    sget-object v1, Lorg/libsdl/app/SDLSurface;->mSensorManager:Landroid/hardware/SensorManager;

    .line 1869
    invoke-virtual {v1, p1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1868
    invoke-virtual {v0, p0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    goto :goto_1b

    .line 1872
    :cond_10
    sget-object v0, Lorg/libsdl/app/SDLSurface;->mSensorManager:Landroid/hardware/SensorManager;

    sget-object v1, Lorg/libsdl/app/SDLSurface;->mSensorManager:Landroid/hardware/SensorManager;

    .line 1873
    invoke-virtual {v1, p1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    .line 1872
    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 1875
    :goto_1b
    return-void
.end method

.method public getNativeSurface()Landroid/view/Surface;
    .registers 2

    .line 1567
    invoke-virtual {p0}, Lorg/libsdl/app/SDLSurface;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public handlePause()V
    .registers 3

    .line 1554
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/libsdl/app/SDLSurface;->enableSensor(IZ)V

    .line 1555
    return-void
.end method

.method public handleResume()V
    .registers 2

    .line 1558
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/libsdl/app/SDLSurface;->setFocusable(Z)V

    .line 1559
    invoke-virtual {p0, v0}, Lorg/libsdl/app/SDLSurface;->setFocusableInTouchMode(Z)V

    .line 1560
    invoke-virtual {p0}, Lorg/libsdl/app/SDLSurface;->requestFocus()Z

    .line 1561
    invoke-virtual {p0, p0}, Lorg/libsdl/app/SDLSurface;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1562
    invoke-virtual {p0, p0}, Lorg/libsdl/app/SDLSurface;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1563
    invoke-virtual {p0, v0, v0}, Lorg/libsdl/app/SDLSurface;->enableSensor(IZ)V

    .line 1564
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 1880
    return-void
.end method

.method public onCapturedPointerEvent(Landroid/view/MotionEvent;)Z
    .registers 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1930
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1933
    .local v0, "action":I
    const/4 v1, 0x1

    const/4 v2, 0x0

    sparse-switch v0, :sswitch_data_42

    .line 1966
    return v2

    .line 1951
    :sswitch_a
    const/16 v3, 0xb

    if-ne v0, v3, :cond_10

    .line 1952
    const/4 v0, 0x0

    goto :goto_15

    .line 1954
    :cond_10
    const/16 v3, 0xc

    if-ne v0, v3, :cond_15

    .line 1955
    const/4 v0, 0x1

    .line 1958
    :cond_15
    :goto_15
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 1959
    .local v3, "x":F
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    .line 1960
    .local v2, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v4

    .line 1962
    .local v4, "button":I
    invoke-static {v4, v0, v3, v2, v1}, Lorg/libsdl/app/SDLActivity;->onNativeMouse(IIFFZ)V

    .line 1963
    return v1

    .line 1935
    .end local v2    # "y":F
    .end local v3    # "x":F
    .end local v4    # "button":I
    :sswitch_25
    const/16 v3, 0xa

    invoke-virtual {p1, v3, v2}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v3

    .line 1936
    .restart local v3    # "x":F
    const/16 v4, 0x9

    invoke-virtual {p1, v4, v2}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v4

    .line 1937
    .local v4, "y":F
    invoke-static {v2, v0, v3, v4, v2}, Lorg/libsdl/app/SDLActivity;->onNativeMouse(IIFFZ)V

    .line 1938
    return v1

    .line 1942
    .end local v3    # "x":F
    .end local v4    # "y":F
    :sswitch_35
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 1943
    .restart local v3    # "x":F
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 1944
    .restart local v4    # "y":F
    invoke-static {v2, v0, v3, v4, v1}, Lorg/libsdl/app/SDLActivity;->onNativeMouse(IIFFZ)V

    .line 1945
    return v1

    nop

    :sswitch_data_42
    .sparse-switch
        0x2 -> :sswitch_35
        0x7 -> :sswitch_35
        0x8 -> :sswitch_25
        0xb -> :sswitch_a
        0xc -> :sswitch_a
    .end sparse-switch
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 1723
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v0

    invoke-static {v0}, Lorg/libsdl/app/SDLControllerManager;->isDeviceSDLJoystick(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2d

    .line 1725
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1c

    .line 1726
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v0

    invoke-static {v0, p2}, Lorg/libsdl/app/SDLControllerManager;->onNativePadDown(II)I

    move-result v0

    if-nez v0, :cond_2d

    .line 1727
    return v1

    .line 1729
    :cond_1c
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_2d

    .line 1730
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v0

    invoke-static {v0, p2}, Lorg/libsdl/app/SDLControllerManager;->onNativePadUp(II)I

    move-result v0

    if-nez v0, :cond_2d

    .line 1731
    return v1

    .line 1736
    :cond_2d
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getSource()I

    move-result v0

    and-int/lit16 v0, v0, 0x101

    if-eqz v0, :cond_5b

    .line 1737
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_51

    .line 1739
    invoke-static {p3}, Lorg/libsdl/app/SDLActivity;->isTextInputEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 1740
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v0

    int-to-char v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lorg/libsdl/app/SDLInputConnection;->nativeCommitText(Ljava/lang/String;I)V

    .line 1742
    :cond_4d
    invoke-static {p2}, Lorg/libsdl/app/SDLActivity;->onNativeKeyDown(I)V

    .line 1743
    return v1

    .line 1745
    :cond_51
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_5b

    .line 1747
    invoke-static {p2}, Lorg/libsdl/app/SDLActivity;->onNativeKeyUp(I)V

    .line 1748
    return v1

    .line 1752
    :cond_5b
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getSource()I

    move-result v0

    and-int/lit16 v0, v0, 0x2002

    if-eqz v0, :cond_73

    .line 1755
    const/4 v0, 0x4

    if-eq p2, v0, :cond_6a

    const/16 v0, 0x7d

    if-ne p2, v0, :cond_73

    .line 1756
    :cond_6a
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_76

    goto :goto_73

    .line 1761
    :pswitch_72
    return v1

    .line 1766
    :cond_73
    :goto_73
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_76
    .packed-switch 0x0
        :pswitch_72
        :pswitch_72
    .end packed-switch
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 11
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 1884
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5c

    .line 1888
    const/4 v0, 0x0

    .line 1891
    .local v0, "newOrientation":I
    sget-object v2, Lorg/libsdl/app/SDLSurface;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_5e

    .line 1908
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v3

    .line 1909
    .local v2, "x":F
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v3, v1

    .line 1910
    .local v1, "y":F
    const/4 v0, 0x3

    .line 1914
    move v8, v2

    move v2, v1

    move v1, v8

    goto :goto_43

    .line 1898
    .end local v1    # "y":F
    .end local v2    # "x":F
    :pswitch_21
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v2, v1

    .line 1899
    .local v1, "x":F
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v3

    neg-float v2, v2

    .line 1900
    .local v2, "y":F
    const/4 v0, 0x2

    .line 1901
    goto :goto_43

    .line 1903
    .end local v1    # "x":F
    .end local v2    # "y":F
    :pswitch_2c
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v2, v1

    neg-float v1, v1

    .line 1904
    .restart local v1    # "x":F
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v3

    neg-float v2, v2

    .line 1905
    .restart local v2    # "y":F
    const/4 v0, 0x4

    .line 1906
    goto :goto_43

    .line 1893
    .end local v1    # "x":F
    .end local v2    # "y":F
    :pswitch_38
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v2, v1

    neg-float v1, v1

    .line 1894
    .restart local v1    # "x":F
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v3

    .line 1895
    .restart local v2    # "y":F
    const/4 v0, 0x1

    .line 1896
    nop

    .line 1914
    :goto_43
    sget v3, Lorg/libsdl/app/SDLActivity;->mCurrentOrientation:I

    if-eq v0, v3, :cond_4c

    .line 1915
    sput v0, Lorg/libsdl/app/SDLActivity;->mCurrentOrientation:I

    .line 1916
    invoke-static {v0}, Lorg/libsdl/app/SDLActivity;->onNativeOrientationChanged(I)V

    .line 1919
    :cond_4c
    neg-float v3, v1

    const v4, 0x411ce80a

    div-float/2addr v3, v4

    div-float v5, v2, v4

    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v7, 0x2

    aget v6, v6, v7

    div-float/2addr v6, v4

    invoke-static {v3, v5, v6}, Lorg/libsdl/app/SDLActivity;->onNativeAccel(FFF)V

    .line 1925
    .end local v0    # "newOrientation":I
    .end local v1    # "x":F
    .end local v2    # "y":F
    :cond_5c
    return-void

    nop

    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_38
        :pswitch_2c
        :pswitch_21
    .end packed-switch
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 21
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 1773
    move-object/from16 v1, p2

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v8

    .line 1774
    .local v8, "touchDevId":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v9

    .line 1775
    .local v9, "pointerCount":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v10

    .line 1778
    .local v10, "action":I
    const/4 v2, -0x1

    .line 1783
    .local v2, "i":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getSource()I

    move-result v3

    const/4 v11, 0x1

    const/16 v4, 0x2002

    if-eq v3, v4, :cond_20

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getSource()I

    move-result v3

    const/16 v4, 0x3002

    if-ne v3, v4, :cond_5f

    :cond_20
    sget-boolean v3, Lorg/libsdl/app/SDLActivity;->mSeparateMouseAndTouch:Z

    if-eqz v3, :cond_5f

    .line 1784
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    if-ge v3, v4, :cond_2c

    .line 1785
    const/4 v3, 0x1

    .line 1785
    .local v3, "mouseButton":I
    goto :goto_4a

    .line 1788
    .end local v3    # "mouseButton":I
    :cond_2c
    :try_start_2c
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getButtonState"

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_45} :catch_46

    .line 1791
    .restart local v3    # "mouseButton":I
    goto :goto_4a

    .line 1789
    .end local v3    # "mouseButton":I
    :catch_46
    move-exception v0

    move-object v3, v0

    .line 1790
    .local v3, "e":Ljava/lang/Exception;
    nop

    .line 1790
    .end local v3    # "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    .line 1796
    .local v3, "mouseButton":I
    :goto_4a
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->getMotionListener()Lorg/libsdl/app/SDLGenericMotionListener_API12;

    move-result-object v4

    .line 1797
    .local v4, "motionListener":Lorg/libsdl/app/SDLGenericMotionListener_API12;
    invoke-virtual {v4, v1}, Lorg/libsdl/app/SDLGenericMotionListener_API12;->getEventX(Landroid/view/MotionEvent;)F

    move-result v5

    .line 1798
    .local v5, "x":F
    invoke-virtual {v4, v1}, Lorg/libsdl/app/SDLGenericMotionListener_API12;->getEventY(Landroid/view/MotionEvent;)F

    move-result v6

    .line 1800
    .local v6, "y":F
    invoke-virtual {v4}, Lorg/libsdl/app/SDLGenericMotionListener_API12;->inRelativeMode()Z

    move-result v7

    invoke-static {v3, v10, v5, v6, v7}, Lorg/libsdl/app/SDLActivity;->onNativeMouse(IIFFZ)V

    .line 1801
    .end local v4    # "motionListener":Lorg/libsdl/app/SDLGenericMotionListener_API12;
    goto/16 :goto_fd

    .line 1802
    .end local v3    # "mouseButton":I
    .end local v5    # "x":F
    .end local v6    # "y":F
    :cond_5f
    const/high16 v12, 0x3f800000    # 1.0f

    packed-switch v10, :pswitch_data_100

    :pswitch_64
    goto/16 :goto_fd

    .line 1842
    :pswitch_66
    const/4 v2, 0x0

    move v13, v2

    .line 1842
    .end local v2    # "i":I
    .local v13, "i":I
    :goto_68
    if-ge v13, v9, :cond_fe

    .line 1843
    invoke-virtual {v1, v13}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v14

    .line 1844
    .local v14, "pointerFingerId":I
    invoke-virtual {v1, v13}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    sget v3, Lorg/libsdl/app/SDLSurface;->mWidth:F

    div-float v15, v2, v3

    .line 1845
    .local v15, "x":F
    invoke-virtual {v1, v13}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    sget v3, Lorg/libsdl/app/SDLSurface;->mHeight:F

    div-float v16, v2, v3

    .line 1846
    .local v16, "y":F
    invoke-virtual {v1, v13}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v2

    .line 1847
    .local v2, "p":F
    cmpl-float v3, v2, v12

    if-lez v3, :cond_88

    .line 1850
    const/high16 v2, 0x3f800000    # 1.0f

    .line 1852
    .end local v2    # "p":F
    .local v17, "p":F
    :cond_88
    move/from16 v17, v2

    const/4 v4, 0x1

    move v2, v8

    move v3, v14

    move v5, v15

    move/from16 v6, v16

    move/from16 v7, v17

    invoke-static/range {v2 .. v7}, Lorg/libsdl/app/SDLActivity;->onNativeTouch(IIIFFF)V

    .line 1842
    add-int/lit8 v13, v13, 0x1

    goto :goto_68

    .line 1804
    .end local v13    # "i":I
    .end local v14    # "pointerFingerId":I
    .end local v15    # "x":F
    .end local v16    # "y":F
    .end local v17    # "p":F
    .local v2, "i":I
    :pswitch_98
    const/4 v2, 0x0

    move v13, v2

    .line 1804
    .end local v2    # "i":I
    .restart local v13    # "i":I
    :goto_9a
    if-ge v13, v9, :cond_fe

    .line 1805
    invoke-virtual {v1, v13}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v14

    .line 1806
    .restart local v14    # "pointerFingerId":I
    invoke-virtual {v1, v13}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    sget v3, Lorg/libsdl/app/SDLSurface;->mWidth:F

    div-float v15, v2, v3

    .line 1807
    .restart local v15    # "x":F
    invoke-virtual {v1, v13}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    sget v3, Lorg/libsdl/app/SDLSurface;->mHeight:F

    div-float v16, v2, v3

    .line 1808
    .restart local v16    # "y":F
    invoke-virtual {v1, v13}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v2

    .line 1809
    .local v2, "p":F
    cmpl-float v3, v2, v12

    if-lez v3, :cond_ba

    .line 1812
    const/high16 v2, 0x3f800000    # 1.0f

    .line 1814
    .end local v2    # "p":F
    .restart local v17    # "p":F
    :cond_ba
    move/from16 v17, v2

    move v2, v8

    move v3, v14

    move v4, v10

    move v5, v15

    move/from16 v6, v16

    move/from16 v7, v17

    invoke-static/range {v2 .. v7}, Lorg/libsdl/app/SDLActivity;->onNativeTouch(IIIFFF)V

    .line 1804
    add-int/lit8 v13, v13, 0x1

    goto :goto_9a

    .line 1821
    .end local v13    # "i":I
    .end local v14    # "pointerFingerId":I
    .end local v15    # "x":F
    .end local v16    # "y":F
    .end local v17    # "p":F
    .local v2, "i":I
    :pswitch_ca
    const/4 v2, 0x0

    .line 1825
    :pswitch_cb
    const/4 v3, -0x1

    if-ne v2, v3, :cond_d2

    .line 1826
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    .line 1829
    .end local v2    # "i":I
    .restart local v13    # "i":I
    :cond_d2
    move v13, v2

    invoke-virtual {v1, v13}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v14

    .line 1830
    .restart local v14    # "pointerFingerId":I
    invoke-virtual {v1, v13}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    sget v3, Lorg/libsdl/app/SDLSurface;->mWidth:F

    div-float v15, v2, v3

    .line 1831
    .restart local v15    # "x":F
    invoke-virtual {v1, v13}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    sget v3, Lorg/libsdl/app/SDLSurface;->mHeight:F

    div-float v16, v2, v3

    .line 1832
    .restart local v16    # "y":F
    invoke-virtual {v1, v13}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v2

    .line 1833
    .local v2, "p":F
    cmpl-float v3, v2, v12

    if-lez v3, :cond_f1

    .line 1836
    const/high16 v2, 0x3f800000    # 1.0f

    .line 1838
    .end local v2    # "p":F
    .local v12, "p":F
    :cond_f1
    move v12, v2

    move v2, v8

    move v3, v14

    move v4, v10

    move v5, v15

    move/from16 v6, v16

    move v7, v12

    invoke-static/range {v2 .. v7}, Lorg/libsdl/app/SDLActivity;->onNativeTouch(IIIFFF)V

    .line 1839
    goto :goto_fe

    .line 1861
    .end local v12    # "p":F
    .end local v13    # "i":I
    .end local v14    # "pointerFingerId":I
    .end local v15    # "x":F
    .end local v16    # "y":F
    .local v2, "i":I
    :goto_fd
    move v13, v2

    .line 1861
    .end local v2    # "i":I
    .restart local v13    # "i":I
    :cond_fe
    :goto_fe
    return v11

    nop

    :pswitch_data_100
    .packed-switch 0x0
        :pswitch_ca
        :pswitch_ca
        :pswitch_98
        :pswitch_66
        :pswitch_64
        :pswitch_cb
        :pswitch_cb
    .end packed-switch
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 24
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    move/from16 v1, p2

    move/from16 v8, p3

    .line 1594
    move/from16 v9, p4

    const-string v2, "SDL"

    const-string v3, "surfaceChanged()"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1596
    sget-object v2, Lorg/libsdl/app/SDLActivity;->mSingleton:Lorg/libsdl/app/SDLActivity;

    if-nez v2, :cond_12

    .line 1597
    return-void

    .line 1600
    :cond_12
    const v2, 0x15151002

    .line 1601
    .local v2, "sdlFormat":I
    packed-switch v1, :pswitch_data_17a

    .line 1641
    :pswitch_18
    const-string v3, "SDL"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pixel format unknown "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_94

    .line 1628
    :pswitch_2f
    const-string v3, "SDL"

    const-string v4, "pixel format RGB_332"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1629
    const v2, 0x14110801

    .line 1630
    goto :goto_94

    .line 1606
    :pswitch_3a
    const-string v3, "SDL"

    const-string v4, "pixel format LA_88"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1607
    goto :goto_94

    .line 1609
    :pswitch_42
    const-string v3, "SDL"

    const-string v4, "pixel format L_8"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1610
    goto :goto_94

    .line 1603
    :pswitch_4a
    const-string v3, "SDL"

    const-string v4, "pixel format A_8"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1604
    goto :goto_94

    .line 1612
    :pswitch_52
    const-string v3, "SDL"

    const-string v4, "pixel format RGBA_4444"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1613
    const v2, 0x15421002

    .line 1614
    goto :goto_94

    .line 1616
    :pswitch_5d
    const-string v3, "SDL"

    const-string v4, "pixel format RGBA_5551"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1617
    const v2, 0x15441002

    .line 1618
    goto :goto_94

    .line 1632
    :pswitch_68
    const-string v3, "SDL"

    const-string v4, "pixel format RGB_565"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1633
    const v2, 0x15151002

    .line 1634
    goto :goto_94

    .line 1636
    :pswitch_73
    const-string v3, "SDL"

    const-string v4, "pixel format RGB_888"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1638
    const v2, 0x16161804

    .line 1639
    goto :goto_94

    .line 1624
    :pswitch_7e
    const-string v3, "SDL"

    const-string v4, "pixel format RGBX_8888"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1625
    const v2, 0x16261804

    .line 1626
    goto :goto_94

    .line 1620
    :pswitch_89
    const-string v3, "SDL"

    const-string v4, "pixel format RGBA_8888"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1621
    const v2, 0x16462004

    .line 1622
    nop

    .line 1645
    .end local v2    # "sdlFormat":I
    .local v10, "sdlFormat":I
    :goto_94
    move v10, v2

    int-to-float v2, v8

    sput v2, Lorg/libsdl/app/SDLSurface;->mWidth:F

    .line 1646
    int-to-float v2, v9

    sput v2, Lorg/libsdl/app/SDLSurface;->mHeight:F

    .line 1647
    move v2, v8

    .line 1648
    .local v2, "nDeviceWidth":I
    move v3, v9

    .line 1651
    .local v3, "nDeviceHeight":I
    :try_start_9d
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x11

    if-lt v4, v5, :cond_b3

    .line 1652
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1653
    .local v4, "realMetrics":Landroid/util/DisplayMetrics;
    sget-object v5, Lorg/libsdl/app/SDLSurface;->mDisplay:Landroid/view/Display;

    invoke-virtual {v5, v4}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 1654
    iget v5, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    move v2, v5

    .line 1655
    iget v5, v4, Landroid/util/DisplayMetrics;->heightPixels:I
    :try_end_b2
    .catch Ljava/lang/Throwable; {:try_start_9d .. :try_end_b2} :catch_b4

    move v3, v5

    .line 1658
    .end local v4    # "realMetrics":Landroid/util/DisplayMetrics;
    :cond_b3
    goto :goto_b5

    :catch_b4
    move-exception v0

    .line 1660
    .end local v2    # "nDeviceWidth":I
    .end local v3    # "nDeviceHeight":I
    .local v11, "nDeviceWidth":I
    .local v12, "nDeviceHeight":I
    :goto_b5
    move v11, v2

    move v12, v3

    invoke-static {}, Lorg/libsdl/app/SDLActivity;->getContext()Landroid/content/Context;

    move-result-object v2

    monitor-enter v2

    .line 1662
    :try_start_bc
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 1663
    monitor-exit v2
    :try_end_c4
    .catchall {:try_start_bc .. :try_end_c4} :catchall_175

    .line 1665
    const-string v2, "SDL"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Window size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1666
    const-string v2, "SDL"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Device size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1667
    sget-object v2, Lorg/libsdl/app/SDLSurface;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getRefreshRate()F

    move-result v7

    move v2, v8

    move v3, v9

    move v4, v11

    move v5, v12

    move v6, v10

    invoke-static/range {v2 .. v7}, Lorg/libsdl/app/SDLActivity;->onNativeResize(IIIIIF)V

    .line 1669
    const/4 v2, 0x0

    .line 1670
    .local v2, "skip":Z
    sget-object v3, Lorg/libsdl/app/SDLActivity;->mSingleton:Lorg/libsdl/app/SDLActivity;

    invoke-virtual {v3}, Lorg/libsdl/app/SDLActivity;->getRequestedOrientation()I

    move-result v3

    .line 1672
    .local v3, "requestedOrientation":I
    const/4 v4, -0x1

    const/4 v5, 0x1

    if-ne v3, v4, :cond_11a

    goto :goto_138

    .line 1676
    :cond_11a
    if-eq v3, v5, :cond_12f

    const/4 v4, 0x7

    if-ne v3, v4, :cond_120

    goto :goto_12f

    .line 1681
    :cond_120
    if-eqz v3, :cond_125

    const/4 v4, 0x6

    if-ne v3, v4, :cond_138

    .line 1682
    :cond_125
    sget v4, Lorg/libsdl/app/SDLSurface;->mWidth:F

    sget v6, Lorg/libsdl/app/SDLSurface;->mHeight:F

    cmpg-float v4, v4, v6

    if-gez v4, :cond_138

    .line 1683
    const/4 v2, 0x1

    goto :goto_138

    .line 1678
    :cond_12f
    :goto_12f
    sget v4, Lorg/libsdl/app/SDLSurface;->mWidth:F

    sget v6, Lorg/libsdl/app/SDLSurface;->mHeight:F

    cmpl-float v4, v4, v6

    if-lez v4, :cond_138

    .line 1679
    const/4 v2, 0x1

    .line 1688
    :cond_138
    :goto_138
    if-eqz v2, :cond_15f

    .line 1689
    sget v4, Lorg/libsdl/app/SDLSurface;->mWidth:F

    sget v6, Lorg/libsdl/app/SDLSurface;->mHeight:F

    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result v4

    float-to-double v6, v4

    .line 1690
    .local v6, "min":D
    sget v4, Lorg/libsdl/app/SDLSurface;->mWidth:F

    sget v13, Lorg/libsdl/app/SDLSurface;->mHeight:F

    invoke-static {v4, v13}, Ljava/lang/Math;->max(FF)F

    move-result v4

    float-to-double v13, v4

    .line 1692
    .local v13, "max":D
    div-double v15, v13, v6

    const-wide v17, 0x3ff3333333333333L    # 1.2

    cmpg-double v4, v15, v17

    if-gez v4, :cond_15f

    .line 1693
    const-string v4, "SDL"

    const-string v15, "Don\'t skip on such aspect-ratio. Could be a square resolution."

    invoke-static {v4, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1694
    const/4 v2, 0x0

    .line 1698
    .end local v6    # "min":D
    .end local v13    # "max":D
    :cond_15f
    if-eqz v2, :cond_16c

    .line 1699
    const-string v4, "SDL"

    const-string v5, "Skip .. Surface is not ready."

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1700
    const/4 v4, 0x0

    sput-boolean v4, Lorg/libsdl/app/SDLActivity;->mIsSurfaceReady:Z

    .line 1701
    return-void

    .line 1705
    :cond_16c
    sput-boolean v5, Lorg/libsdl/app/SDLActivity;->mIsSurfaceReady:Z

    .line 1708
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->onNativeSurfaceChanged()V

    .line 1710
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->handleNativeState()V

    .line 1711
    return-void

    .line 1663
    .end local v2    # "skip":Z
    .end local v3    # "requestedOrientation":I
    :catchall_175
    move-exception v0

    move-object v3, v0

    :try_start_177
    monitor-exit v2
    :try_end_178
    .catchall {:try_start_177 .. :try_end_178} :catchall_175

    throw v3

    nop

    :pswitch_data_17a
    .packed-switch 0x1
        :pswitch_89
        :pswitch_7e
        :pswitch_73
        :pswitch_68
        :pswitch_18
        :pswitch_5d
        :pswitch_52
        :pswitch_4a
        :pswitch_42
        :pswitch_3a
        :pswitch_2f
    .end packed-switch
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 4
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .line 1573
    const-string v0, "SDL"

    const-string v1, "surfaceCreated()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1574
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 1575
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 4
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .line 1580
    const-string v0, "SDL"

    const-string v1, "surfaceDestroyed()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1583
    sget-object v0, Lorg/libsdl/app/SDLActivity$NativeState;->PAUSED:Lorg/libsdl/app/SDLActivity$NativeState;

    sput-object v0, Lorg/libsdl/app/SDLActivity;->mNextNativeState:Lorg/libsdl/app/SDLActivity$NativeState;

    .line 1584
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->handleNativeState()V

    .line 1586
    const/4 v0, 0x0

    sput-boolean v0, Lorg/libsdl/app/SDLActivity;->mIsSurfaceReady:Z

    .line 1587
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->onNativeSurfaceDestroyed()V

    .line 1588
    return-void
.end method
