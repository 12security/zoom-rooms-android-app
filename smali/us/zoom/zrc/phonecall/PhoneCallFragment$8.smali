.class Lus/zoom/zrc/phonecall/PhoneCallFragment$8;
.super Ljava/lang/Object;
.source "PhoneCallFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/phonecall/PhoneCallFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/phonecall/PhoneCallFragment;

.field final synthetic val$statusView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lus/zoom/zrc/phonecall/PhoneCallFragment;Landroid/widget/TextView;)V
    .locals 0

    .line 297
    iput-object p1, p0, Lus/zoom/zrc/phonecall/PhoneCallFragment$8;->this$0:Lus/zoom/zrc/phonecall/PhoneCallFragment;

    iput-object p2, p0, Lus/zoom/zrc/phonecall/PhoneCallFragment$8;->val$statusView:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 300
    iget-object v0, p0, Lus/zoom/zrc/phonecall/PhoneCallFragment$8;->this$0:Lus/zoom/zrc/phonecall/PhoneCallFragment;

    invoke-static {v0}, Lus/zoom/zrc/phonecall/PhoneCallFragment;->access$600(Lus/zoom/zrc/phonecall/PhoneCallFragment;)Lus/zoom/zrc/utils/CallTimeHandler;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/utils/CallTimeHandler;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 301
    iget-object v0, p0, Lus/zoom/zrc/phonecall/PhoneCallFragment$8;->val$statusView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Lus/zoom/androidlib/util/AccessibilityUtil;->announceForAccessibilityCompat(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
