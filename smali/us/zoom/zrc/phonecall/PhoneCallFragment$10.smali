.class Lus/zoom/zrc/phonecall/PhoneCallFragment$10;
.super Lus/zoom/zrc/utils/AnimationListenerAdapter;
.source "PhoneCallFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/phonecall/PhoneCallFragment;->showDTMFKeyPad()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/phonecall/PhoneCallFragment;

.field final synthetic val$callInfoEntering:Landroid/view/View;


# direct methods
.method constructor <init>(Lus/zoom/zrc/phonecall/PhoneCallFragment;Landroid/view/View;)V
    .locals 0

    .line 609
    iput-object p1, p0, Lus/zoom/zrc/phonecall/PhoneCallFragment$10;->this$0:Lus/zoom/zrc/phonecall/PhoneCallFragment;

    iput-object p2, p0, Lus/zoom/zrc/phonecall/PhoneCallFragment$10;->val$callInfoEntering:Landroid/view/View;

    invoke-direct {p0}, Lus/zoom/zrc/utils/AnimationListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 612
    iget-object p1, p0, Lus/zoom/zrc/phonecall/PhoneCallFragment$10;->val$callInfoEntering:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
