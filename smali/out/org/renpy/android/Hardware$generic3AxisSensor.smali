.class public Lorg/renpy/android/Hardware$generic3AxisSensor;
.super Ljava/lang/Object;
.source "Hardware.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/renpy/android/Hardware;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "generic3AxisSensor"
.end annotation


# instance fields
.field private final sSensor:Landroid/hardware/Sensor;

.field sSensorEvent:Landroid/hardware/SensorEvent;

.field private final sSensorManager:Landroid/hardware/SensorManager;

.field private final sSensorType:I


# direct methods
.method public constructor <init>(I)V
    .registers 4
    .param p1, "sensorType"    # I

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput p1, p0, Lorg/renpy/android/Hardware$generic3AxisSensor;->sSensorType:I

    .line 82
    sget-object v0, Lorg/renpy/android/Hardware;->context:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lorg/renpy/android/Hardware$generic3AxisSensor;->sSensorManager:Landroid/hardware/SensorManager;

    .line 83
    iget-object v0, p0, Lorg/renpy/android/Hardware$generic3AxisSensor;->sSensorManager:Landroid/hardware/SensorManager;

    iget v1, p0, Lorg/renpy/android/Hardware$generic3AxisSensor;->sSensorType:I

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lorg/renpy/android/Hardware$generic3AxisSensor;->sSensor:Landroid/hardware/Sensor;

    .line 84
    return-void
.end method


# virtual methods
.method public changeStatus(Z)V
    .registers 5
    .param p1, "enable"    # Z

    .line 97
    if-eqz p1, :cond_b

    .line 98
    iget-object v0, p0, Lorg/renpy/android/Hardware$generic3AxisSensor;->sSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lorg/renpy/android/Hardware$generic3AxisSensor;->sSensor:Landroid/hardware/Sensor;

    const/4 v2, 0x3

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_12

    .line 100
    :cond_b
    iget-object v0, p0, Lorg/renpy/android/Hardware$generic3AxisSensor;->sSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lorg/renpy/android/Hardware$generic3AxisSensor;->sSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 102
    :goto_12
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 87
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 2
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 90
    iput-object p1, p0, Lorg/renpy/android/Hardware$generic3AxisSensor;->sSensorEvent:Landroid/hardware/SensorEvent;

    .line 91
    return-void
.end method

.method public readSensor()[F
    .registers 2

    .line 108
    iget-object v0, p0, Lorg/renpy/android/Hardware$generic3AxisSensor;->sSensorEvent:Landroid/hardware/SensorEvent;

    if-eqz v0, :cond_9

    .line 109
    iget-object v0, p0, Lorg/renpy/android/Hardware$generic3AxisSensor;->sSensorEvent:Landroid/hardware/SensorEvent;

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    return-object v0

    .line 111
    :cond_9
    sget-object v0, Lorg/renpy/android/Hardware;->defaultRv:[F

    return-object v0
.end method
