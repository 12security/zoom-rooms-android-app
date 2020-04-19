.class Lus/zoom/zrc/phonecall/PhoneCallFragment$16;
.super Lus/zoom/zrc/utils/AnimationListenerAdapter;
.source "PhoneCallFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/phonecall/PhoneCallFragment;->hideDTMFKeypad()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/phonecall/PhoneCallFragment;

.field final synthetic val$callControlEntering:Landroid/view/View;


# direct methods
.method constructor <init>(Lus/zoom/zrc/phonecall/PhoneCallFragment;Landroid/view/View;)V
    .locals 0

    .line 698
    iput-object p1, p0, Lus/zoom/zrc/phonecall/PhoneCallFragment$16;->this$0:Lus/zoom/zrc/phonecall/PhoneCallFragment;

    iput-object p2, p0, Lus/zoom/zrc/phonecall/PhoneCallFragment$16;->val$callControlEntering:Landroid/view/View;

    invoke-direct {p0}, Lus/zoom/zrc/utils/AnimationListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    .line 701
    iget-object p1, p0, Lus/zoom/zrc/phonecall/PhoneCallFragment$16;->val$callControlEntering:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
