.class public Lus/zoom/androidlib/app/ZMDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "ZMDialogFragment.java"

# interfaces
.implements Lus/zoom/androidlib/util/IUIElement;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/androidlib/app/ZMDialogFragment$ZMDialogParam;,
        Lus/zoom/androidlib/app/ZMDialogFragment$RetainedFragment;
    }
.end annotation


# static fields
.field public static final PARAMS:Ljava/lang/String; = "dialog_fragment_parameters"

.field private static final TAG:Ljava/lang/String; = "ZMDialogFragment"


# instance fields
.field private mDismissRunnable:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field private mIsEmptyDialog:Z

.field private mRetainedFragment:Lus/zoom/androidlib/app/ZMDialogFragment$RetainedFragment;

.field private mTaskMgr:Lus/zoom/androidlib/util/EventTaskManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lus/zoom/androidlib/app/ZMDialogFragment;->mTaskMgr:Lus/zoom/androidlib/util/EventTaskManager;

    .line 32
    iput-object v0, p0, Lus/zoom/androidlib/app/ZMDialogFragment;->mRetainedFragment:Lus/zoom/androidlib/app/ZMDialogFragment$RetainedFragment;

    .line 34
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lus/zoom/androidlib/app/ZMDialogFragment;->mHandler:Landroid/os/Handler;

    .line 35
    new-instance v0, Lus/zoom/androidlib/app/ZMDialogFragment$1;

    invoke-direct {v0, p0}, Lus/zoom/androidlib/app/ZMDialogFragment$1;-><init>(Lus/zoom/androidlib/app/ZMDialogFragment;)V

    iput-object v0, p0, Lus/zoom/androidlib/app/ZMDialogFragment;->mDismissRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lus/zoom/androidlib/app/ZMDialogFragment;)Lus/zoom/androidlib/util/EventTaskManager;
    .locals 0

    .line 27
    iget-object p0, p0, Lus/zoom/androidlib/app/ZMDialogFragment;->mTaskMgr:Lus/zoom/androidlib/util/EventTaskManager;

    return-object p0
.end method

.method private getRetainedFragment()Lus/zoom/androidlib/app/ZMDialogFragment$RetainedFragment;
    .locals 3

    .line 210
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMDialogFragment;->mRetainedFragment:Lus/zoom/androidlib/app/ZMDialogFragment$RetainedFragment;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 215
    invoke-virtual {p0}, Lus/zoom/androidlib/app/ZMDialogFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lus/zoom/androidlib/app/ZMDialogFragment$RetainedFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lus/zoom/androidlib/app/ZMDialogFragment$RetainedFragment;

    :cond_1
    return-object v0
.end method

.method private initRetainedFragment()V
    .locals 4

    .line 154
    invoke-direct {p0}, Lus/zoom/androidlib/app/ZMDialogFragment;->getRetainedFragment()Lus/zoom/androidlib/app/ZMDialogFragment$RetainedFragment;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/androidlib/app/ZMDialogFragment;->mRetainedFragment:Lus/zoom/androidlib/app/ZMDialogFragment$RetainedFragment;

    .line 155
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMDialogFragment;->mRetainedFragment:Lus/zoom/androidlib/app/ZMDialogFragment$RetainedFragment;

    if-nez v0, :cond_0

    .line 157
    :try_start_0
    new-instance v0, Lus/zoom/androidlib/app/ZMDialogFragment$RetainedFragment;

    invoke-direct {v0}, Lus/zoom/androidlib/app/ZMDialogFragment$RetainedFragment;-><init>()V

    iput-object v0, p0, Lus/zoom/androidlib/app/ZMDialogFragment;->mRetainedFragment:Lus/zoom/androidlib/app/ZMDialogFragment$RetainedFragment;

    .line 159
    invoke-virtual {p0}, Lus/zoom/androidlib/app/ZMDialogFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/androidlib/app/ZMDialogFragment;->mRetainedFragment:Lus/zoom/androidlib/app/ZMDialogFragment$RetainedFragment;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v3, Lus/zoom/androidlib/app/ZMDialogFragment$RetainedFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 471
    invoke-virtual {p0}, Lus/zoom/androidlib/app/ZMDialogFragment;->getContentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "saasbee_contentViewState"

    .line 474
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 478
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private performResume()V
    .locals 2

    .line 268
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMDialogFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lus/zoom/androidlib/app/ZMDialogFragment$2;

    invoke-direct {v1, p0}, Lus/zoom/androidlib/app/ZMDialogFragment$2;-><init>(Lus/zoom/androidlib/app/ZMDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static shouldShow(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;Landroid/os/Parcelable;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    .line 52
    invoke-static {p1}, Lus/zoom/androidlib/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    check-cast p0, Lus/zoom/androidlib/app/ZMDialogFragment;

    const/4 p1, 0x1

    if-nez p0, :cond_1

    return p1

    .line 63
    :cond_1
    invoke-virtual {p0}, Lus/zoom/androidlib/app/ZMDialogFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lus/zoom/androidlib/app/ZMDialogFragment;->isHidden()Z

    move-result v1

    if-nez v1, :cond_7

    .line 65
    invoke-virtual {p0}, Lus/zoom/androidlib/app/ZMDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_3

    if-eqz p2, :cond_2

    .line 70
    invoke-virtual {p0}, Lus/zoom/androidlib/app/ZMDialogFragment;->dismiss()V

    return p1

    :cond_2
    return v0

    :cond_3
    const-string v2, "dialog_fragment_parameters"

    .line 78
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    if-nez v1, :cond_4

    .line 81
    invoke-virtual {p0}, Lus/zoom/androidlib/app/ZMDialogFragment;->dismiss()V

    return p1

    :cond_4
    if-nez p2, :cond_5

    .line 87
    invoke-virtual {p0}, Lus/zoom/androidlib/app/ZMDialogFragment;->dismiss()V

    return p1

    .line 91
    :cond_5
    invoke-virtual {v1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    return v0

    .line 96
    :cond_6
    invoke-virtual {p0}, Lus/zoom/androidlib/app/ZMDialogFragment;->dismiss()V

    return p1

    .line 102
    :cond_7
    invoke-virtual {p0}, Lus/zoom/androidlib/app/ZMDialogFragment;->dismiss()V

    return p1

    :cond_8
    :goto_0
    return v0
.end method


# virtual methods
.method public checkSelfPermission(Ljava/lang/String;)I
    .locals 4

    .line 189
    invoke-virtual {p0}, Lus/zoom/androidlib/app/ZMDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lus/zoom/androidlib/app/ZMActivity;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 193
    :cond_0
    invoke-static {p1}, Lus/zoom/androidlib/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 198
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-virtual {v0, p1, v2, v3}, Lus/zoom/androidlib/app/ZMActivity;->checkPermission(Ljava/lang/String;II)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return v1

    .line 194
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "permission is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected createEmptyDialog()Landroid/app/Dialog;
    .locals 2

    const/4 v0, 0x1

    .line 487
    iput-boolean v0, p0, Lus/zoom/androidlib/app/ZMDialogFragment;->mIsEmptyDialog:Z

    .line 488
    new-instance v0, Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;

    invoke-virtual {p0}, Lus/zoom/androidlib/app/ZMDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;->create()Lus/zoom/androidlib/widget/ZMAlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public dismiss()V
    .locals 1

    .line 384
    invoke-virtual {p0}, Lus/zoom/androidlib/app/ZMDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 387
    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 388
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->isStateSaved()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 390
    :cond_1
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public finishActivity(I)V
    .locals 1

    .line 224
    invoke-virtual {p0}, Lus/zoom/androidlib/app/ZMDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lus/zoom/androidlib/app/ZMActivity;

    if-nez v0, :cond_0

    return-void

    .line 228
    :cond_0
    invoke-virtual {v0, p0, p1}, Lus/zoom/androidlib/app/ZMActivity;->finishActivityFromFragment(Landroidx/fragment/app/Fragment;I)V

    return-void
.end method

.method protected finishFragment(I)V
    .locals 1

    .line 437
    invoke-virtual {p0}, Lus/zoom/androidlib/app/ZMDialogFragment;->getShowsDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 438
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    goto :goto_0

    .line 440
    :cond_0
    invoke-virtual {p0}, Lus/zoom/androidlib/app/ZMDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 442
    invoke-virtual {v0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 443
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected finishFragment(ILandroid/content/Intent;)V
    .locals 1

    .line 454
    invoke-virtual {p0}, Lus/zoom/androidlib/app/ZMDialogFragment;->getShowsDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 455
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    goto :goto_1

    .line 457
    :cond_0
    invoke-virtual {p0}, Lus/zoom/androidlib/app/ZMDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    if-nez p2, :cond_1

    .line 460
    invoke-virtual {v0, p1}, Landroid/app/Activity;->setResult(I)V

    goto :goto_0

    .line 462
    :cond_1
    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 465
    :goto_0
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_2
    :goto_1
    return-void
.end method

.method protected finishFragment(Z)V
    .locals 1

    .line 418
    invoke-virtual {p0}, Lus/zoom/androidlib/app/ZMDialogFragment;->getShowsDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 419
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    goto :goto_0

    .line 421
    :cond_0
    invoke-virtual {p0}, Lus/zoom/androidlib/app/ZMDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 423
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 425
    invoke-virtual {v0, p1, p1}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .line 492
    invoke-static {p0}, Lus/zoom/androidlib/app/ZMFragment$ContentViewHelper;->getFragmentContentView(Landroidx/fragment/app/Fragment;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final getEventTaskManager()Lus/zoom/androidlib/util/EventTaskManager;
    .locals 1

    .line 42
    invoke-direct {p0}, Lus/zoom/androidlib/app/ZMDialogFragment;->getRetainedFragment()Lus/zoom/androidlib/app/ZMDialogFragment$RetainedFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, v0, Lus/zoom/androidlib/app/ZMDialogFragment$RetainedFragment;->mTaskMgr:Lus/zoom/androidlib/util/EventTaskManager;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getNonNullEventTaskManagerOrThrowException()Lus/zoom/androidlib/util/EventTaskManager;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 109
    invoke-direct {p0}, Lus/zoom/androidlib/app/ZMDialogFragment;->getRetainedFragment()Lus/zoom/androidlib/app/ZMDialogFragment$RetainedFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, v0, Lus/zoom/androidlib/app/ZMDialogFragment$RetainedFragment;->mTaskMgr:Lus/zoom/androidlib/util/EventTaskManager;

    return-object v0

    .line 112
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in getNonNullEventTaskManagerOrThrowException. class="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected isInMultWindowMode()Z
    .locals 4

    .line 168
    invoke-virtual {p0}, Lus/zoom/androidlib/app/ZMDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 173
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_1

    .line 174
    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    return v0

    :cond_1
    return v1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5

    .line 118
    :try_start_0
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onActivityCreated(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    .line 143
    invoke-direct {p0, p1}, Lus/zoom/androidlib/app/ZMDialogFragment;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 145
    :cond_0
    invoke-direct {p0}, Lus/zoom/androidlib/app/ZMDialogFragment;->initRetainedFragment()V

    .line 147
    invoke-direct {p0}, Lus/zoom/androidlib/app/ZMDialogFragment;->getRetainedFragment()Lus/zoom/androidlib/app/ZMDialogFragment$RetainedFragment;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 149
    iget-object p1, p1, Lus/zoom/androidlib/app/ZMDialogFragment$RetainedFragment;->mTaskMgr:Lus/zoom/androidlib/util/EventTaskManager;

    iput-object p1, p0, Lus/zoom/androidlib/app/ZMDialogFragment;->mTaskMgr:Lus/zoom/androidlib/util/EventTaskManager;

    :cond_1
    return-void

    :catch_0
    move-exception p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 122
    invoke-virtual {p0}, Lus/zoom/androidlib/app/ZMDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lus/zoom/androidlib/app/ZMActivity;

    if-eqz v2, :cond_3

    .line 124
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 125
    invoke-virtual {v2}, Lus/zoom/androidlib/app/ZMActivity;->isActive()Z

    move-result v1

    .line 127
    invoke-virtual {v2}, Lus/zoom/androidlib/app/ZMActivity;->isFinishing()Z

    move-result v3

    if-eqz v3, :cond_2

    return-void

    .line 132
    :cond_2
    invoke-static {v2}, Lus/zoom/androidlib/app/ZMActivity;->isActivityDestroyed(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_3

    return-void

    .line 139
    :cond_3
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in onActivityCreated. class="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", activityClass="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", isActive="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public onDestroy()V
    .locals 2

    .line 233
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroy()V

    .line 235
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMDialogFragment;->mTaskMgr:Lus/zoom/androidlib/util/EventTaskManager;

    if-eqz v0, :cond_0

    .line 236
    invoke-virtual {v0, p0}, Lus/zoom/androidlib/util/EventTaskManager;->onUIDestroy(Lus/zoom/androidlib/util/IUIElement;)V

    .line 239
    :cond_0
    invoke-virtual {p0}, Lus/zoom/androidlib/app/ZMDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 241
    iget-object v1, p0, Lus/zoom/androidlib/app/ZMDialogFragment;->mTaskMgr:Lus/zoom/androidlib/util/EventTaskManager;

    if-eqz v1, :cond_3

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lus/zoom/androidlib/app/ZMDialogFragment;->isRemoving()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 242
    :cond_2
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMDialogFragment;->mTaskMgr:Lus/zoom/androidlib/util/EventTaskManager;

    invoke-virtual {v0}, Lus/zoom/androidlib/util/EventTaskManager;->destroy()V

    :cond_3
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 248
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onPause()V

    .line 250
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMDialogFragment;->mTaskMgr:Lus/zoom/androidlib/util/EventTaskManager;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lus/zoom/androidlib/app/ZMDialogFragment;->isInMultWindowMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 251
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMDialogFragment;->mTaskMgr:Lus/zoom/androidlib/util/EventTaskManager;

    invoke-virtual {v0, p0}, Lus/zoom/androidlib/util/EventTaskManager;->onPause(Lus/zoom/androidlib/util/IUIElement;)V

    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0
    .param p2    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 257
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onResume()V

    .line 259
    invoke-virtual {p0}, Lus/zoom/androidlib/app/ZMDialogFragment;->isInMultWindowMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 260
    invoke-direct {p0}, Lus/zoom/androidlib/app/ZMDialogFragment;->performResume()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 400
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 402
    invoke-virtual {p0}, Lus/zoom/androidlib/app/ZMDialogFragment;->getContentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 405
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 406
    invoke-virtual {v0, v1}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    const-string v0, "saasbee_contentViewState"

    .line 407
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 6

    .line 282
    :try_start_0
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMDialogFragment;->mTaskMgr:Lus/zoom/androidlib/util/EventTaskManager;

    if-eqz v0, :cond_0

    .line 307
    invoke-virtual {v0, p0}, Lus/zoom/androidlib/util/EventTaskManager;->onStart(Lus/zoom/androidlib/util/IUIElement;)V

    .line 310
    :cond_0
    invoke-virtual {p0}, Lus/zoom/androidlib/app/ZMDialogFragment;->isInMultWindowMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 311
    invoke-direct {p0}, Lus/zoom/androidlib/app/ZMDialogFragment;->performResume()V

    .line 313
    :cond_1
    iget-boolean v0, p0, Lus/zoom/androidlib/app/ZMDialogFragment;->mIsEmptyDialog:Z

    if-eqz v0, :cond_2

    .line 314
    invoke-virtual {p0}, Lus/zoom/androidlib/app/ZMDialogFragment;->dismiss()V

    :cond_2
    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 286
    invoke-virtual {p0}, Lus/zoom/androidlib/app/ZMDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    check-cast v3, Lus/zoom/androidlib/app/ZMActivity;

    if-eqz v3, :cond_4

    .line 288
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 289
    invoke-virtual {v3}, Lus/zoom/androidlib/app/ZMActivity;->isActive()Z

    move-result v2

    .line 291
    invoke-virtual {v3}, Lus/zoom/androidlib/app/ZMActivity;->isFinishing()Z

    move-result v4

    if-eqz v4, :cond_3

    return-void

    .line 296
    :cond_3
    invoke-static {v3}, Lus/zoom/androidlib/app/ZMActivity;->isActivityDestroyed(Landroid/app/Activity;)Z

    move-result v3

    if-eqz v3, :cond_4

    return-void

    .line 303
    :cond_4
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in ZMDialogFragment.onStart(). class="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", activityClass="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isActive="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public onStop()V
    .locals 2

    .line 320
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStop()V

    .line 321
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMDialogFragment;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lus/zoom/androidlib/app/ZMDialogFragment;->mDismissRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 322
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 324
    :cond_0
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMDialogFragment;->mTaskMgr:Lus/zoom/androidlib/util/EventTaskManager;

    if-eqz v0, :cond_1

    .line 325
    invoke-virtual {v0, p0}, Lus/zoom/androidlib/util/EventTaskManager;->onStop(Lus/zoom/androidlib/util/IUIElement;)V

    :cond_1
    return-void
.end method

.method public postDismiss()V
    .locals 2

    .line 394
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMDialogFragment;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lus/zoom/androidlib/app/ZMDialogFragment;->mDismissRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 395
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public show(Landroidx/fragment/app/FragmentTransaction;Ljava/lang/String;)I
    .locals 2

    .line 356
    invoke-virtual {p0}, Lus/zoom/androidlib/app/ZMDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    .line 358
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_0

    return v1

    .line 363
    :cond_0
    invoke-static {v0}, Lus/zoom/androidlib/app/ZMActivity;->isActivityDestroyed(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    return v1

    .line 374
    :cond_2
    :try_start_0
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentTransaction;Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return v1
.end method

.method public show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    .locals 2

    .line 331
    invoke-virtual {p0}, Lus/zoom/androidlib/app/ZMDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 333
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 338
    :cond_0
    invoke-static {v0}, Lus/zoom/androidlib/app/ZMActivity;->isActivityDestroyed(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 348
    :cond_1
    :try_start_0
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public zm_requestPermissions([Ljava/lang/String;I)V
    .locals 1

    .line 181
    invoke-virtual {p0}, Lus/zoom/androidlib/app/ZMDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lus/zoom/androidlib/app/ZMActivity;

    if-nez v0, :cond_0

    return-void

    .line 185
    :cond_0
    invoke-static {p0, p1, p2}, Lus/zoom/androidlib/app/ZMActivityCompat;->requestPermissionsFromFragment(Landroidx/fragment/app/Fragment;[Ljava/lang/String;I)V

    return-void
.end method
