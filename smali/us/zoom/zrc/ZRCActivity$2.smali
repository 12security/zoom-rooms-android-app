.class Lus/zoom/zrc/ZRCActivity$2;
.super Lus/zoom/zrc/simpleListener/SimpleIZRPtEventListener;
.source "ZRCActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/ZRCActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/ZRCActivity;


# direct methods
.method constructor <init>(Lus/zoom/zrc/ZRCActivity;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lus/zoom/zrc/ZRCActivity$2;->this$0:Lus/zoom/zrc/ZRCActivity;

    invoke-direct {p0}, Lus/zoom/zrc/simpleListener/SimpleIZRPtEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioCheckupNotification(Lus/zoom/zrcsdk/model/ZRCAudioCheckupInfo;)V
    .locals 1

    .line 106
    iget-object v0, p0, Lus/zoom/zrc/ZRCActivity$2;->this$0:Lus/zoom/zrc/ZRCActivity;

    invoke-static {v0, p1}, Lus/zoom/zrc/ZRCActivity;->access$000(Lus/zoom/zrc/ZRCActivity;Lus/zoom/zrcsdk/model/ZRCAudioCheckupInfo;)V

    return-void
.end method

.method public onIncomingCallNotification(Lus/zoom/zrcsdk/model/ZRCIncomingZoomCall;)V
    .locals 1

    .line 101
    iget-object v0, p0, Lus/zoom/zrc/ZRCActivity$2;->this$0:Lus/zoom/zrc/ZRCActivity;

    invoke-virtual {v0, p1}, Lus/zoom/zrc/ZRCActivity;->onIncomingCallNotification(Lus/zoom/zrcsdk/model/ZRCIncomingZoomCall;)V

    return-void
.end method
