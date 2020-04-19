.class Lus/zoom/zrc/phonecall/SipCallFragment$33;
.super Lus/zoom/zrc/utils/AnimationListenerAdapter;
.source "SipCallFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/phonecall/SipCallFragment;->showDTMFKeyPad()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/phonecall/SipCallFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrc/phonecall/SipCallFragment;)V
    .locals 0

    .line 876
    iput-object p1, p0, Lus/zoom/zrc/phonecall/SipCallFragment$33;->this$0:Lus/zoom/zrc/phonecall/SipCallFragment;

    invoke-direct {p0}, Lus/zoom/zrc/utils/AnimationListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    .line 879
    iget-object p1, p0, Lus/zoom/zrc/phonecall/SipCallFragment$33;->this$0:Lus/zoom/zrc/phonecall/SipCallFragment;

    invoke-static {p1}, Lus/zoom/zrc/phonecall/SipCallFragment;->access$3200(Lus/zoom/zrc/phonecall/SipCallFragment;)Lus/zoom/zrc/base/widget/keypad/KeypadGridView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/widget/keypad/KeypadGridView;->setVisibility(I)V

    return-void
.end method
