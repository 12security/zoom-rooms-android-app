.class Lus/zoom/zrc/ultrasound/ZRCUltrasoundCrestronPlayer$StopTask;
.super Ljava/lang/Object;
.source "ZRCUltrasoundCrestronPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/ultrasound/ZRCUltrasoundCrestronPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StopTask"
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/ultrasound/ZRCUltrasoundCrestronPlayer;


# direct methods
.method private constructor <init>(Lus/zoom/zrc/ultrasound/ZRCUltrasoundCrestronPlayer;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundCrestronPlayer$StopTask;->this$0:Lus/zoom/zrc/ultrasound/ZRCUltrasoundCrestronPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lus/zoom/zrc/ultrasound/ZRCUltrasoundCrestronPlayer;Lus/zoom/zrc/ultrasound/ZRCUltrasoundCrestronPlayer$1;)V
    .locals 0

    .line 189
    invoke-direct {p0, p1}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundCrestronPlayer$StopTask;-><init>(Lus/zoom/zrc/ultrasound/ZRCUltrasoundCrestronPlayer;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 193
    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/Android/data/us.zoom.zrc/files/direct_share_signal.wav"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 194
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 195
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    sget-object v0, Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;->TAG:Ljava/lang/String;

    const-string v1, "delete wave file success!"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 200
    :cond_0
    sget-object v0, Lus/zoom/zrc/ultrasound/ZRCUltraSoundPlayer;->TAG:Ljava/lang/String;

    const-string v1, "stop finished!"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
