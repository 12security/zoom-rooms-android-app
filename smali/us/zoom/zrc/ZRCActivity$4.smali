.class Lus/zoom/zrc/ZRCActivity$4;
.super Lus/zoom/androidlib/util/EventAction;
.source "ZRCActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/ZRCActivity;->onSendFailed(I)V
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

    .line 379
    iput-object p1, p0, Lus/zoom/zrc/ZRCActivity$4;->this$0:Lus/zoom/zrc/ZRCActivity;

    invoke-direct {p0}, Lus/zoom/androidlib/util/EventAction;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lus/zoom/androidlib/util/IUIElement;)V
    .locals 0

    .line 382
    check-cast p1, Lus/zoom/zrc/ZRCActivity;

    invoke-virtual {p1}, Lus/zoom/zrc/ZRCActivity;->dismissWaitingDialog()V

    return-void
.end method
