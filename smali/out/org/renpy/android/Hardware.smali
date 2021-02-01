.class public Lorg/renpy/android/Hardware;
.super Ljava/lang/Object;
.source "Hardware.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/renpy/android/Hardware$generic3AxisSensor;
    }
.end annotation


# static fields
.field public static accelerometerSensor:Lorg/renpy/android/Hardware$generic3AxisSensor;

.field static context:Landroid/content/Context;

.field public static final defaultRv:[F

.field static latestResult:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field public static magneticFieldSensor:Lorg/renpy/android/Hardware$generic3AxisSensor;

.field public static metrics:Landroid/util/DisplayMetrics;

.field public static network_state:Z

.field public static orientationSensor:Lorg/renpy/android/Hardware$generic3AxisSensor;

.field static view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 34
    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_1a

    sput-object v0, Lorg/renpy/android/Hardware;->defaultRv:[F

    .line 116
    const/4 v0, 0x0

    sput-object v0, Lorg/renpy/android/Hardware;->accelerometerSensor:Lorg/renpy/android/Hardware$generic3AxisSensor;

    .line 117
    sput-object v0, Lorg/renpy/android/Hardware;->orientationSensor:Lorg/renpy/android/Hardware$generic3AxisSensor;

    .line 118
    sput-object v0, Lorg/renpy/android/Hardware;->magneticFieldSensor:Lorg/renpy/android/Hardware$generic3AxisSensor;

    .line 155
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    sput-object v0, Lorg/renpy/android/Hardware;->metrics:Landroid/util/DisplayMetrics;

    .line 239
    const/4 v0, 0x0

    sput-boolean v0, Lorg/renpy/android/Hardware;->network_state:Z

    return-void

    :array_1a
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static accelerometerEnable(Z)V
    .registers 3
    .param p0, "enable"    # Z

    .line 125
    sget-object v0, Lorg/renpy/android/Hardware;->accelerometerSensor:Lorg/renpy/android/Hardware$generic3AxisSensor;

    if-nez v0, :cond_c

    .line 126
    new-instance v0, Lorg/renpy/android/Hardware$generic3AxisSensor;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/renpy/android/Hardware$generic3AxisSensor;-><init>(I)V

    sput-object v0, Lorg/renpy/android/Hardware;->accelerometerSensor:Lorg/renpy/android/Hardware$generic3AxisSensor;

    .line 127
    :cond_c
    sget-object v0, Lorg/renpy/android/Hardware;->accelerometerSensor:Lorg/renpy/android/Hardware$generic3AxisSensor;

    invoke-virtual {v0, p0}, Lorg/renpy/android/Hardware$generic3AxisSensor;->changeStatus(Z)V

    .line 128
    return-void
.end method

.method public static accelerometerReading()[F
    .registers 1

    .line 130
    sget-object v0, Lorg/renpy/android/Hardware;->accelerometerSensor:Lorg/renpy/android/Hardware$generic3AxisSensor;

    if-nez v0, :cond_7

    .line 131
    sget-object v0, Lorg/renpy/android/Hardware;->defaultRv:[F

    return-object v0

    .line 132
    :cond_7
    sget-object v0, Lorg/renpy/android/Hardware;->accelerometerSensor:Lorg/renpy/android/Hardware$generic3AxisSensor;

    invoke-virtual {v0}, Lorg/renpy/android/Hardware$generic3AxisSensor;->readSensor()[F

    move-result-object v0

    check-cast v0, [F

    return-object v0
.end method

.method public static checkNetwork()Z
    .registers 4

    .line 249
    const/4 v0, 0x0

    .line 250
    .local v0, "state":Z
    sget-object v1, Lorg/renpy/android/Hardware;->context:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 252
    .local v1, "conMgr":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 253
    .local v2, "activeNetwork":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_19

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 254
    const/4 v0, 0x1

    goto :goto_1a

    .line 256
    :cond_19
    const/4 v0, 0x0

    .line 259
    :goto_1a
    return v0
.end method

.method public static enableWifiScanner()V
    .registers 3

    .line 201
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 202
    .local v0, "i":Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 204
    sget-object v1, Lorg/renpy/android/Hardware;->context:Landroid/content/Context;

    new-instance v2, Lorg/renpy/android/Hardware$1;

    invoke-direct {v2}, Lorg/renpy/android/Hardware$1;-><init>()V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 215
    return-void
.end method

.method public static getDPI()I
    .registers 2

    .line 162
    sget-object v0, Lorg/kivy/android/PythonActivity;->mActivity:Lorg/kivy/android/PythonActivity;

    invoke-virtual {v0}, Lorg/kivy/android/PythonActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    sget-object v1, Lorg/renpy/android/Hardware;->metrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 163
    sget-object v0, Lorg/renpy/android/Hardware;->metrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    return v0
.end method

.method public static getHardwareSensors()Ljava/lang/String;
    .registers 9

    .line 50
    sget-object v0, Lorg/renpy/android/Hardware;->context:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 51
    .local v0, "sm":Landroid/hardware/SensorManager;
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v1

    .line 53
    .local v1, "allSensors":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    if-eqz v1, :cond_128

    .line 54
    const-string v2, ""

    .line 55
    .local v2, "resultString":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_17
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_127

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Sensor;

    .line 56
    .local v4, "s":Landroid/hardware/Sensor;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Name="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v8, v7, [Ljava/lang/Object;

    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 57
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ",Vendor="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getVendor()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v8, v7, [Ljava/lang/Object;

    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 58
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ",Version="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getVersion()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v8, v7, [Ljava/lang/Object;

    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 59
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ",MaximumRange="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v8, v7, [Ljava/lang/Object;

    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 62
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ",Power="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getPower()F

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v8, v7, [Ljava/lang/Object;

    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 63
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ",Type="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getType()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "\n"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 64
    .end local v4    # "s":Landroid/hardware/Sensor;
    goto/16 :goto_17

    .line 65
    :cond_127
    return-object v2

    .line 67
    .end local v2    # "resultString":Ljava/lang/String;
    :cond_128
    const-string v2, ""

    return-object v2
.end method

.method public static hideKeyboard()V
    .registers 3

    .line 190
    sget-object v0, Lorg/renpy/android/Hardware;->context:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 191
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    sget-object v1, Lorg/renpy/android/Hardware;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 192
    return-void
.end method

.method public static magneticFieldSensorEnable(Z)V
    .registers 3
    .param p0, "enable"    # Z

    .line 145
    sget-object v0, Lorg/renpy/android/Hardware;->magneticFieldSensor:Lorg/renpy/android/Hardware$generic3AxisSensor;

    if-nez v0, :cond_c

    .line 146
    new-instance v0, Lorg/renpy/android/Hardware$generic3AxisSensor;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/renpy/android/Hardware$generic3AxisSensor;-><init>(I)V

    sput-object v0, Lorg/renpy/android/Hardware;->magneticFieldSensor:Lorg/renpy/android/Hardware$generic3AxisSensor;

    .line 147
    :cond_c
    sget-object v0, Lorg/renpy/android/Hardware;->magneticFieldSensor:Lorg/renpy/android/Hardware$generic3AxisSensor;

    invoke-virtual {v0, p0}, Lorg/renpy/android/Hardware$generic3AxisSensor;->changeStatus(Z)V

    .line 148
    return-void
.end method

.method public static magneticFieldSensorReading()[F
    .registers 1

    .line 150
    sget-object v0, Lorg/renpy/android/Hardware;->magneticFieldSensor:Lorg/renpy/android/Hardware$generic3AxisSensor;

    if-nez v0, :cond_7

    .line 151
    sget-object v0, Lorg/renpy/android/Hardware;->defaultRv:[F

    return-object v0

    .line 152
    :cond_7
    sget-object v0, Lorg/renpy/android/Hardware;->magneticFieldSensor:Lorg/renpy/android/Hardware$generic3AxisSensor;

    invoke-virtual {v0}, Lorg/renpy/android/Hardware$generic3AxisSensor;->readSensor()[F

    move-result-object v0

    check-cast v0, [F

    return-object v0
.end method

.method public static orientationSensorEnable(Z)V
    .registers 3
    .param p0, "enable"    # Z

    .line 135
    sget-object v0, Lorg/renpy/android/Hardware;->orientationSensor:Lorg/renpy/android/Hardware$generic3AxisSensor;

    if-nez v0, :cond_c

    .line 136
    new-instance v0, Lorg/renpy/android/Hardware$generic3AxisSensor;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/renpy/android/Hardware$generic3AxisSensor;-><init>(I)V

    sput-object v0, Lorg/renpy/android/Hardware;->orientationSensor:Lorg/renpy/android/Hardware$generic3AxisSensor;

    .line 137
    :cond_c
    sget-object v0, Lorg/renpy/android/Hardware;->orientationSensor:Lorg/renpy/android/Hardware$generic3AxisSensor;

    invoke-virtual {v0, p0}, Lorg/renpy/android/Hardware$generic3AxisSensor;->changeStatus(Z)V

    .line 138
    return-void
.end method

.method public static orientationSensorReading()[F
    .registers 1

    .line 140
    sget-object v0, Lorg/renpy/android/Hardware;->orientationSensor:Lorg/renpy/android/Hardware$generic3AxisSensor;

    if-nez v0, :cond_7

    .line 141
    sget-object v0, Lorg/renpy/android/Hardware;->defaultRv:[F

    return-object v0

    .line 142
    :cond_7
    sget-object v0, Lorg/renpy/android/Hardware;->orientationSensor:Lorg/renpy/android/Hardware$generic3AxisSensor;

    invoke-virtual {v0}, Lorg/renpy/android/Hardware$generic3AxisSensor;->readSensor()[F

    move-result-object v0

    check-cast v0, [F

    return-object v0
.end method

.method public static registerNetworkCheck()V
    .registers 3

    .line 267
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 268
    .local v0, "i":Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 269
    sget-object v1, Lorg/renpy/android/Hardware;->context:Landroid/content/Context;

    new-instance v2, Lorg/renpy/android/Hardware$2;

    invoke-direct {v2}, Lorg/renpy/android/Hardware$2;-><init>()V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 277
    return-void
.end method

.method public static scanWifi()Ljava/lang/String;
    .registers 8

    .line 221
    sget-object v0, Lorg/renpy/android/Hardware;->latestResult:Ljava/util/List;

    if-eqz v0, :cond_45

    .line 223
    const-string v0, ""

    .line 224
    .local v0, "latestResultString":Ljava/lang/String;
    sget-object v1, Lorg/renpy/android/Hardware;->latestResult:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    .line 226
    .local v2, "result":Landroid/net/wifi/ScanResult;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "%s\t%s\t%d\n"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, v2, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    iget v7, v2, Landroid/net/wifi/ScanResult;->level:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 227
    .end local v2    # "result":Landroid/net/wifi/ScanResult;
    goto :goto_c

    .line 229
    :cond_44
    return-object v0

    .line 232
    .end local v0    # "latestResultString":Ljava/lang/String;
    :cond_45
    const-string v0, ""

    return-object v0
.end method

.method public static vibrate(D)V
    .registers 5
    .param p0, "s"    # D

    .line 40
    sget-object v0, Lorg/renpy/android/Hardware;->context:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 41
    .local v0, "v":Landroid/os/Vibrator;
    if-eqz v0, :cond_18

    .line 42
    const-wide v1, 0x408f400000000000L    # 1000.0

    mul-double v1, v1, p0

    double-to-int v1, v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 44
    :cond_18
    return-void
.end method
