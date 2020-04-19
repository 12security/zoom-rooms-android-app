.class final Lus/zoom/zrc/PTActivity$17;
.super Lus/zoom/zrc/base/util/ZRCForegroundTask;
.source "PTActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/PTActivity;->dispatchAirplayBlackMagicStatusChanged()V
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


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1694
    invoke-direct {p0}, Lus/zoom/zrc/base/util/ZRCForegroundTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lus/zoom/zrc/PTActivity;)V
    .locals 1

    .line 1697
    invoke-virtual {p1}, Lus/zoom/zrc/PTActivity;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object p1

    sget-object v0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->getFragment(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;

    if-eqz p1, :cond_0

    .line 1698
    invoke-virtual {p1}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1699
    invoke-virtual {p1}, Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->onAirPlayBlackMagicStatusChanged()V

    :cond_0
    return-void
.end method

.method public bridge synthetic run(Lus/zoom/zrc/ZRCActivity;)V
    .locals 0

    .line 1694
    check-cast p1, Lus/zoom/zrc/PTActivity;

    invoke-virtual {p0, p1}, Lus/zoom/zrc/PTActivity$17;->run(Lus/zoom/zrc/PTActivity;)V

    return-void
.end method
