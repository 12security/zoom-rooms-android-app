.class final Lus/zoom/zrc/PTActivity$16;
.super Lus/zoom/zrc/base/util/ZRCForegroundTask;
.source "PTActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/PTActivity;->launchPresentationPage(Lus/zoom/zrc/share_camera/model/ZRCSharingType;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lus/zoom/zrc/base/util/ZRCForegroundTask<",
        "Lus/zoom/zrc/PTActivity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$autoShown:Z

.field final synthetic val$duration:I

.field final synthetic val$sharingType:Lus/zoom/zrc/share_camera/model/ZRCSharingType;


# direct methods
.method constructor <init>(Lus/zoom/zrc/share_camera/model/ZRCSharingType;IZ)V
    .locals 0

    .line 1659
    iput-object p1, p0, Lus/zoom/zrc/PTActivity$16;->val$sharingType:Lus/zoom/zrc/share_camera/model/ZRCSharingType;

    iput p2, p0, Lus/zoom/zrc/PTActivity$16;->val$duration:I

    iput-boolean p3, p0, Lus/zoom/zrc/PTActivity$16;->val$autoShown:Z

    invoke-direct {p0}, Lus/zoom/zrc/base/util/ZRCForegroundTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lus/zoom/zrc/PTActivity;)V
    .locals 4

    .line 1662
    invoke-virtual {p1}, Lus/zoom/zrc/PTActivity;->dismissWaitingDialog()V

    .line 1663
    invoke-virtual {p1}, Lus/zoom/zrc/PTActivity;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/zrc/view/SimpleFeedbackFragment;->dismissAllFeedback(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;)V

    const/4 v0, 0x0

    .line 1665
    sput-boolean v0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->isPendingToShow:Z

    .line 1666
    const-class v0, Lus/zoom/zrc/phonecall/SipPhoneCallActivity;

    invoke-static {v0}, Lus/zoom/zrc/ActivityLauncher;->closeActivity(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1667
    invoke-virtual {p1}, Lus/zoom/zrc/PTActivity;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/PTActivity$16;->val$sharingType:Lus/zoom/zrc/share_camera/model/ZRCSharingType;

    iget v2, p0, Lus/zoom/zrc/PTActivity$16;->val$duration:I

    iget-boolean v3, p0, Lus/zoom/zrc/PTActivity$16;->val$autoShown:Z

    invoke-static {v0, v1, v2, v3}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->showPresentation(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;Lus/zoom/zrc/share_camera/model/ZRCSharingType;IZ)V

    .line 1668
    invoke-static {p1}, Lus/zoom/zrc/PTActivity;->access$1300(Lus/zoom/zrc/PTActivity;)V

    goto :goto_0

    .line 1670
    :cond_0
    invoke-virtual {p1}, Lus/zoom/zrc/PTActivity;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object p1

    iget-object v0, p0, Lus/zoom/zrc/PTActivity$16;->val$sharingType:Lus/zoom/zrc/share_camera/model/ZRCSharingType;

    iget v1, p0, Lus/zoom/zrc/PTActivity$16;->val$duration:I

    iget-boolean v2, p0, Lus/zoom/zrc/PTActivity$16;->val$autoShown:Z

    invoke-static {p1, v0, v1, v2}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->showPresentation(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;Lus/zoom/zrc/share_camera/model/ZRCSharingType;IZ)V

    :goto_0
    return-void
.end method

.method public bridge synthetic run(Lus/zoom/zrc/ZRCActivity;)V
    .locals 0

    .line 1659
    check-cast p1, Lus/zoom/zrc/PTActivity;

    invoke-virtual {p0, p1}, Lus/zoom/zrc/PTActivity$16;->run(Lus/zoom/zrc/PTActivity;)V

    return-void
.end method
