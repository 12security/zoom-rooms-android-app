.class Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine$6;
.super Ljava/lang/Object;
.source "ZRCUltrasoundSignalEngine.java"

# interfaces
.implements Lus/zoom/zrc/model/AppEngine$IWebPullCallBackEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;


# direct methods
.method constructor <init>(Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine$6;->this$0:Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public LoginInfoPullBack(Lus/zoom/zrcsdk/model/LoginInfo;)V
    .locals 0

    .line 190
    iget-object p1, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine$6;->this$0:Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;

    invoke-static {p1}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->access$500(Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;)V

    return-void
.end method

.method public onUpdatedWebSettingsNotification(Lus/zoom/zrcsdk/model/LoginInfo;)V
    .locals 0

    .line 195
    iget-object p1, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine$6;->this$0:Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;

    invoke-static {p1}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;->access$500(Lus/zoom/zrc/ultrasound/ZRCUltrasoundSignalEngine;)V

    return-void
.end method
