.class Lus/zoom/zrc/ZRCActivity$5;
.super Lus/zoom/androidlib/util/EventAction;
.source "ZRCActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/ZRCActivity;->showWaitingDialog(Ljava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/ZRCActivity;

.field final synthetic val$message:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lus/zoom/zrc/ZRCActivity;Ljava/lang/CharSequence;)V
    .locals 0

    .line 396
    iput-object p1, p0, Lus/zoom/zrc/ZRCActivity$5;->this$0:Lus/zoom/zrc/ZRCActivity;

    iput-object p2, p0, Lus/zoom/zrc/ZRCActivity$5;->val$message:Ljava/lang/CharSequence;

    invoke-direct {p0}, Lus/zoom/androidlib/util/EventAction;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lus/zoom/androidlib/util/IUIElement;)V
    .locals 1

    .line 399
    check-cast p1, Lus/zoom/zrc/ZRCActivity;

    iget-object v0, p0, Lus/zoom/zrc/ZRCActivity$5;->val$message:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Lus/zoom/zrc/ZRCActivity;->access$100(Lus/zoom/zrc/ZRCActivity;Ljava/lang/CharSequence;)V

    return-void
.end method
