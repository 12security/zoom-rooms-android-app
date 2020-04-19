.class Lus/zoom/zrc/ZRCActivity$7;
.super Lus/zoom/androidlib/util/EventAction;
.source "ZRCActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/ZRCActivity;->onCertItemVerifyFailed(Lus/zoom/zrcsdk/model/ZRCVerifyCertEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/ZRCActivity;

.field final synthetic val$verifyEvent:Lus/zoom/zrcsdk/model/ZRCVerifyCertEvent;


# direct methods
.method constructor <init>(Lus/zoom/zrc/ZRCActivity;Ljava/lang/String;Lus/zoom/zrcsdk/model/ZRCVerifyCertEvent;)V
    .locals 0

    .line 485
    iput-object p1, p0, Lus/zoom/zrc/ZRCActivity$7;->this$0:Lus/zoom/zrc/ZRCActivity;

    iput-object p3, p0, Lus/zoom/zrc/ZRCActivity$7;->val$verifyEvent:Lus/zoom/zrcsdk/model/ZRCVerifyCertEvent;

    invoke-direct {p0, p2}, Lus/zoom/androidlib/util/EventAction;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run(Lus/zoom/androidlib/util/IUIElement;)V
    .locals 1

    .line 488
    check-cast p1, Lus/zoom/zrc/ZRCActivity;

    iget-object v0, p0, Lus/zoom/zrc/ZRCActivity$7;->val$verifyEvent:Lus/zoom/zrcsdk/model/ZRCVerifyCertEvent;

    invoke-static {p1, v0}, Lus/zoom/zrc/ZRCActivity;->access$300(Lus/zoom/zrc/ZRCActivity;Lus/zoom/zrcsdk/model/ZRCVerifyCertEvent;)V

    return-void
.end method
