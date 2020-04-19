.class Lus/zoom/zrc/phonecall/SipCallFragment$25$1;
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


# direct methods
.method constructor <init>(Lus/zoom/zrc/phonecall/SipCallFragment$25;)V
    .locals 0

    .line 470
    iput-object p1, p0, Lus/zoom/zrc/phonecall/SipCallFragment$25$1;->this$1:Lus/zoom/zrc/phonecall/SipCallFragment$25;

    invoke-direct {p0}, Lus/zoom/androidlib/util/EventAction;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lus/zoom/androidlib/util/IUIElement;)V
    .locals 0

    .line 473
    check-cast p1, Lus/zoom/zrc/phonecall/SipCallFragment;

    invoke-virtual {p1}, Lus/zoom/zrc/phonecall/SipCallFragment;->dismissWaitingDialog()V

    return-void
.end method
