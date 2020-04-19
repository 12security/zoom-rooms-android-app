.class Lus/zoom/zrc/phonecall/SipCallFragment$25$2;
.super Lus/zoom/androidlib/util/EventAction;
.source "SipCallFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/phonecall/SipCallFragment$25;->onChanged(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lus/zoom/zrc/phonecall/SipCallFragment$25;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lus/zoom/zrc/phonecall/SipCallFragment$25;Ljava/lang/String;)V
    .locals 0

    .line 477
    iput-object p1, p0, Lus/zoom/zrc/phonecall/SipCallFragment$25$2;->this$1:Lus/zoom/zrc/phonecall/SipCallFragment$25;

    iput-object p2, p0, Lus/zoom/zrc/phonecall/SipCallFragment$25$2;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Lus/zoom/androidlib/util/EventAction;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lus/zoom/androidlib/util/IUIElement;)V
    .locals 1

    .line 480
    check-cast p1, Lus/zoom/zrc/phonecall/SipCallFragment;

    iget-object v0, p0, Lus/zoom/zrc/phonecall/SipCallFragment$25$2;->val$message:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lus/zoom/zrc/phonecall/SipCallFragment;->showWaitingDialog(Ljava/lang/CharSequence;)V

    return-void
.end method
