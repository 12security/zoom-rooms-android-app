.class public Lus/zoom/androidlib/app/ZMFragment;
.super Landroidx/fragment/app/Fragment;
.source "ZMFragment.java"

# interfaces
.implements Lus/zoom/androidlib/util/IUIElement;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/androidlib/app/ZMFragment$RetainedFragment;,
        Lus/zoom/androidlib/app/ZMFragment$ContentViewHelper;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ZMFragment"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mRetainedFragment:Lus/zoom/androidlib/app/ZMFragment$RetainedFragment;

.field private mTaskMgr:Lus/zoom/androidlib/util/EventTaskManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lus/zoom/androidlib/app/ZMFragment;->mTaskMgr:Lus/zoom/androidlib/util/EventTaskManager;

    .line 27
    iput-object v0, p0, Lus/zoom/androidlib/app/ZMFragment;->mRetainedFragment:Lus/zoom/androidlib/app/ZMFragment$RetainedFragment;

    .line 29
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lus/zoom/androidlib/app/ZMFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lus/zoom/androidlib/app/ZMFragment;)Lus/zoom/androidlib/util/EventTaskManager;
    .locals 0

    .line 22
    iget-object p0, p0, Lus/zoom/androidlib/app/ZMFragment;->mTaskMgr:Lus/zoom/androidlib/util/EventTaskManager;

    return-object p0
.end method

.method private getRetainedFragment()Lus/zoom/androidlib/app/ZMFragment$RetainedFragment;
    .locals 3

    .line 69
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMFragment;->mRetainedFragment:Lus/zoom/androidlib/app/ZMFragment$RetainedFragment;

    if-eqz v0, :cond_0

    return-object v0

    .line 72
    :cond_0
    invoke-virtual {p0}, Lus/zoom/androidlib/app/ZMFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lus/zoom/androidlib/app/ZMFragment$RetainedFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lus/zoom/androidlib/app/ZMFragment$RetainedFragment;

    return-object v0
.end method

.method private initRetainedFragment()V
    .locals 4

    .line 55
    invoke-direct {p0}, Lus/zoom/androidlib/app/ZMFragment;->getRetainedFragment()Lus/zoom/androidlib/app/ZMFragment$RetainedFragment;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/androidlib/app/ZMFragment;->mRetainedFragment:Lus/zoom/androidlib/app/ZMFragment$RetainedFragment;

    .line 56
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMFragment;->mRetainedFragment:Lus/zoom/androidlib/app/ZMFragment$RetainedFragment;

    if-nez v0, :cond_0

    .line 58
    :try_start_0
    new-instance v0, Lus/zoom/androidlib/app/ZMFragment$RetainedFragment;

    invoke-direct {v0}, Lus/zoom/androidlib/app/ZMFragment$RetainedFragment;-><init>()V

    iput-object v0, p0, Lus/zoom/androidlib/app/ZMFragment;->mRetainedFragment:Lus/zoom/androidlib/app/ZMFragment$RetainedFragment;

    .line 60
    invoke-virtual {p0}, Lus/zoom/androidlib/app/ZMFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/androidlib/app/ZMFragment;->mRetainedFragment:Lus/zoom/androidlib/app/ZMFragment$RetainedFragment;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v3, Lus/zoom/androidlib/app/ZMFragment$RetainedFragment;

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

.method private performResume()V
    .locals 2

    .line 168
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lus/zoom/androidlib/app/ZMFragment$1;

    invoke-direct {v1, p0}, Lus/zoom/androidlib/app/ZMFragment$1;-><init>(Lus/zoom/androidlib/app/ZMFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public checkSelfPermission(Ljava/lang/String;)I
    .locals 4

    .line 95
    invoke-virtual {p0}, Lus/zoom/androidlib/app/ZMFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lus/zoom/androidlib/app/ZMActivity;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 99
    :cond_0
    invoke-static {p1}, Lus/zoom/androidlib/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 104
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

    .line 100
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "permission is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public finishActivity(I)V
    .locals 1

    .line 79
    invoke-virtual {p0}, Lus/zoom/androidlib/app/ZMFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lus/zoom/androidlib/app/ZMActivity;

    if-nez v0, :cond_0

    return-void

    .line 83
    :cond_0
    invoke-virtual {v0, p0, p1}, Lus/zoom/androidlib/app/ZMActivity;->finishActivityFromFragment(Landroidx/fragment/app/Fragment;I)V

    return-void
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .line 203
    invoke-static {p0}, Lus/zoom/androidlib/app/ZMFragment$ContentViewHelper;->getFragmentContentView(Landroidx/fragment/app/Fragment;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final getEventTaskManager()Lus/zoom/androidlib/util/EventTaskManager;
    .locals 1

    .line 32
    invoke-direct {p0}, Lus/zoom/androidlib/app/ZMFragment;->getRetainedFragment()Lus/zoom/androidlib/app/ZMFragment$RetainedFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, v0, Lus/zoom/androidlib/app/ZMFragment$RetainedFragment;->mTaskMgr:Lus/zoom/androidlib/util/EventTaskManager;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getNonNullEventTaskManagerOrThrowException()Lus/zoom/androidlib/util/EventTaskManager;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 40
    invoke-direct {p0}, Lus/zoom/androidlib/app/ZMFragment;->getRetainedFragment()Lus/zoom/androidlib/app/ZMFragment$RetainedFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, v0, Lus/zoom/androidlib/app/ZMFragment$RetainedFragment;->mTaskMgr:Lus/zoom/androidlib/util/EventTaskManager;

    return-object v0

    .line 44
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

.method public isInMultWindowMode()Z
    .locals 4

    .line 207
    invoke-virtual {p0}, Lus/zoom/androidlib/app/ZMFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 212
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_1

    .line 213
    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    return v0

    :cond_1
    return v1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 48
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 50
    invoke-direct {p0}, Lus/zoom/androidlib/app/ZMFragment;->initRetainedFragment()V

    .line 51
    invoke-direct {p0}, Lus/zoom/androidlib/app/ZMFragment;->getRetainedFragment()Lus/zoom/androidlib/app/ZMFragment$RetainedFragment;

    move-result-object p1

    iget-object p1, p1, Lus/zoom/androidlib/app/ZMFragment$RetainedFragment;->mTaskMgr:Lus/zoom/androidlib/util/EventTaskManager;

    iput-object p1, p0, Lus/zoom/androidlib/app/ZMFragment;->mTaskMgr:Lus/zoom/androidlib/util/EventTaskManager;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 133
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 135
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMFragment;->mTaskMgr:Lus/zoom/androidlib/util/EventTaskManager;

    if-eqz v0, :cond_2

    .line 136
    invoke-virtual {v0, p0}, Lus/zoom/androidlib/util/EventTaskManager;->onUIDestroy(Lus/zoom/androidlib/util/IUIElement;)V

    .line 138
    invoke-virtual {p0}, Lus/zoom/androidlib/app/ZMFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lus/zoom/androidlib/app/ZMFragment;->isRemoving()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 141
    :cond_1
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMFragment;->mTaskMgr:Lus/zoom/androidlib/util/EventTaskManager;

    invoke-virtual {v0}, Lus/zoom/androidlib/util/EventTaskManager;->destroy()V

    :cond_2
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 148
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 150
    invoke-virtual {p0}, Lus/zoom/androidlib/app/ZMFragment;->isInMultWindowMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lus/zoom/androidlib/app/ZMFragment;->mTaskMgr:Lus/zoom/androidlib/util/EventTaskManager;

    if-eqz v0, :cond_0

    .line 151
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

    .line 157
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 159
    invoke-virtual {p0}, Lus/zoom/androidlib/app/ZMFragment;->isInMultWindowMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    invoke-direct {p0}, Lus/zoom/androidlib/app/ZMFragment;->performResume()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 4

    .line 180
    :try_start_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMFragment;->mTaskMgr:Lus/zoom/androidlib/util/EventTaskManager;

    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {v0, p0}, Lus/zoom/androidlib/util/EventTaskManager;->onStart(Lus/zoom/androidlib/util/IUIElement;)V

    .line 189
    :cond_0
    invoke-virtual {p0}, Lus/zoom/androidlib/app/ZMFragment;->isInMultWindowMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 190
    invoke-direct {p0}, Lus/zoom/androidlib/app/ZMFragment;->performResume()V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    .line 182
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in ZMFragment.onStart(). class="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public onStop()V
    .locals 1

    .line 196
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    .line 197
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMFragment;->mTaskMgr:Lus/zoom/androidlib/util/EventTaskManager;

    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {v0, p0}, Lus/zoom/androidlib/util/EventTaskManager;->onStop(Lus/zoom/androidlib/util/IUIElement;)V

    :cond_0
    return-void
.end method

.method public zm_requestPermissions([Ljava/lang/String;I)V
    .locals 1

    .line 87
    invoke-virtual {p0}, Lus/zoom/androidlib/app/ZMFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lus/zoom/androidlib/app/ZMActivity;

    if-nez v0, :cond_0

    return-void

    .line 91
    :cond_0
    invoke-static {p0, p1, p2}, Lus/zoom/androidlib/app/ZMActivityCompat;->requestPermissionsFromFragment(Landroidx/fragment/app/Fragment;[Ljava/lang/String;I)V

    return-void
.end method
