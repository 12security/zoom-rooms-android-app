.class public Lus/zoom/zrcsdk/model/ZRCControllerDeviceInfo;
.super Ljava/lang/Object;
.source "ZRCControllerDeviceInfo.java"


# instance fields
.field private model:Ljava/lang/String;

.field private os_version:Ljava/lang/String;

.field private platform:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCControllerDeviceInfo;->platform:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lus/zoom/zrcsdk/model/ZRCControllerDeviceInfo;->os_version:Ljava/lang/String;

    .line 17
    iput-object p3, p0, Lus/zoom/zrcsdk/model/ZRCControllerDeviceInfo;->model:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getModel()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCControllerDeviceInfo;->model:Ljava/lang/String;

    return-object v0
.end method

.method public getOs_version()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCControllerDeviceInfo;->os_version:Ljava/lang/String;

    return-object v0
.end method

.method public getPlatform()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCControllerDeviceInfo;->platform:Ljava/lang/String;

    return-object v0
.end method

.method public setModel(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCControllerDeviceInfo;->model:Ljava/lang/String;

    return-void
.end method

.method public setOs_version(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCControllerDeviceInfo;->os_version:Ljava/lang/String;

    return-void
.end method

.method public setPlatform(Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCControllerDeviceInfo;->platform:Ljava/lang/String;

    return-void
.end method
