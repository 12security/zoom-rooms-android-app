.class Lus/zoom/zrc/PTActivity$5;
.super Lus/zoom/androidlib/util/EventAction;
.source "PTActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/PTActivity;->onPtMenuAutoRollBack()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/PTActivity;


# direct methods
.method constructor <init>(Lus/zoom/zrc/PTActivity;Ljava/lang/String;)V
    .locals 0

    .line 656
    iput-object p1, p0, Lus/zoom/zrc/PTActivity$5;->this$0:Lus/zoom/zrc/PTActivity;

    invoke-direct {p0, p2}, Lus/zoom/androidlib/util/EventAction;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run(Lus/zoom/androidlib/util/IUIElement;)V
    .locals 1

    .line 659
    iget-object p1, p0, Lus/zoom/zrc/PTActivity$5;->this$0:Lus/zoom/zrc/PTActivity;

    iget-boolean p1, p1, Lus/zoom/zrc/PTActivity;->isTablet:Z

    if-eqz p1, :cond_0

    .line 660
    iget-object p1, p0, Lus/zoom/zrc/PTActivity$5;->this$0:Lus/zoom/zrc/PTActivity;

    invoke-static {p1}, Lus/zoom/zrc/PTActivity;->access$600(Lus/zoom/zrc/PTActivity;)Lus/zoom/zrc/view/PTMenuView;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/view/PTMenuView;->autoRollBackToProperTab()V

    goto :goto_1

    .line 662
    :cond_0
    iget-object p1, p0, Lus/zoom/zrc/PTActivity$5;->this$0:Lus/zoom/zrc/PTActivity;

    invoke-virtual {p1}, Lus/zoom/zrc/PTActivity;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object p1

    .line 663
    invoke-virtual {p1}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->getTopFragmentInBackStack()Landroidx/fragment/app/Fragment;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 664
    instance-of v0, v0, Lus/zoom/zrc/view/PreMeetingPhoneFragment;

    if-nez v0, :cond_1

    .line 665
    invoke-virtual {p1}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->popBackStack()V

    .line 666
    invoke-virtual {p1}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->getTopFragmentInBackStack()Landroidx/fragment/app/Fragment;

    move-result-object v0

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
