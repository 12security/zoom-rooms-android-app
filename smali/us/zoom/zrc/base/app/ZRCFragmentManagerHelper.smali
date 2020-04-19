.class public Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;
.super Ljava/lang/Object;
.source "ZRCFragmentManagerHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ZRCFragmentManagerHelper"

.field private static fragmentAnimationEnabled:Z = true


# instance fields
.field private containerViewId:I
    .annotation build Landroidx/annotation/IdRes;
    .end annotation
.end field

.field private enterAnimation:I

.field private exitAnimation:I

.field private fragmentManager:Landroidx/fragment/app/FragmentManager;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private popEnterAnimation:I

.field private popExitAnimation:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroidx/fragment/app/FragmentManager;)V
    .locals 0
    .param p1    # Landroidx/fragment/app/FragmentManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    return-void
.end method

.method private addFragment(ILandroidx/fragment/app/Fragment;Ljava/lang/String;Z)V
    .locals 5
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param
    .param p2    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 166
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    if-eqz p4, :cond_1

    .line 168
    invoke-virtual {p0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->getBackStackEntryCount()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 173
    :cond_0
    iget v1, p0, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->enterAnimation:I

    iget v2, p0, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->exitAnimation:I

    iget v3, p0, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->popEnterAnimation:I

    iget v4, p0, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->popExitAnimation:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(IIII)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 170
    invoke-virtual {v0, v1, v1}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(II)Landroidx/fragment/app/FragmentTransaction;

    :goto_1
    if-nez p4, :cond_2

    .line 177
    invoke-direct {p0, v0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->clearFragmentStack(Landroidx/fragment/app/FragmentTransaction;)V

    .line 180
    :cond_2
    invoke-virtual {v0, p1, p2, p3}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 181
    invoke-virtual {v0, p3}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 183
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method private checkContainerViewId()V
    .locals 2

    .line 61
    iget v0, p0, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->containerViewId:I

    if-eqz v0, :cond_0

    return-void

    .line 62
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setContainerViewId must be called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private clearFragmentStack(Landroidx/fragment/app/FragmentTransaction;)V
    .locals 6

    const/4 v0, 0x0

    .line 262
    invoke-static {v0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->setFragmentAnimationEnabled(Z)V

    const/4 v1, 0x1

    .line 264
    :try_start_0
    iget-object v2, p0, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Landroidx/fragment/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "ZRCFragmentManagerHelper"

    const-string v4, ""

    .line 266
    new-array v5, v1, [Ljava/lang/Object;

    aput-object v2, v5, v0

    invoke-static {v3, v4, v5}, Lus/zoom/zrcsdk/util/ZRCLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 268
    :goto_0
    invoke-static {v1}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->setFragmentAnimationEnabled(Z)V

    .line 269
    invoke-virtual {p0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->getBackStackEntryCount()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_1
    if-ltz v0, :cond_1

    .line 270
    invoke-virtual {p0, v0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->getFragmentInBackStack(I)Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 272
    invoke-virtual {p1, v1}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private findFragmentInternal(Ljava/lang/Class;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/Fragment;
    .locals 2
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/fragment/app/FragmentManager;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/fragment/app/Fragment;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Landroidx/fragment/app/FragmentManager;",
            ")TT;"
        }
    .end annotation

    .line 73
    invoke-virtual {p2}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object p2

    .line 74
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 75
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->findFragmentInternal(Ljava/lang/Class;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private getFragmentIdInBackStack()I
    .locals 1

    .line 450
    invoke-virtual {p0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->getTopFragmentInBackStack()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 452
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getId()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static isFragmentAnimationDisabled()Z
    .locals 1

    .line 46
    sget-boolean v0, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->fragmentAnimationEnabled:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private varargs isFragmentShow(Landroidx/fragment/app/FragmentManager;[Ljava/lang/Class;)Z
    .locals 5

    .line 470
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object p1

    .line 471
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 472
    array-length v2, p2

    :goto_0
    const/4 v3, 0x1

    if-ge v1, v2, :cond_2

    aget-object v4, p2, v1

    .line 473
    invoke-virtual {v4, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    return v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 477
    :cond_2
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->isFragmentShow(Landroidx/fragment/app/FragmentManager;[Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v3

    :cond_3
    return v1
.end method

.method private static setFragmentAnimationEnabled(Z)V
    .locals 0

    .line 42
    sput-boolean p0, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->fragmentAnimationEnabled:Z

    return-void
.end method

.method private showFragment(ILandroidx/fragment/app/Fragment;Ljava/lang/String;Z)V
    .locals 5
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param
    .param p2    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 136
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    if-eqz p4, :cond_1

    .line 138
    invoke-virtual {p0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->getBackStackEntryCount()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 143
    :cond_0
    iget v1, p0, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->enterAnimation:I

    iget v2, p0, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->exitAnimation:I

    iget v3, p0, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->popEnterAnimation:I

    iget v4, p0, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->popExitAnimation:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(IIII)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 140
    invoke-virtual {v0, v1, v1}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(II)Landroidx/fragment/app/FragmentTransaction;

    :goto_1
    if-nez p4, :cond_2

    .line 147
    invoke-direct {p0, v0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->clearFragmentStack(Landroidx/fragment/app/FragmentTransaction;)V

    .line 150
    :cond_2
    invoke-virtual {v0, p1, p2, p3}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 151
    invoke-virtual {v0, p3}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 153
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method


# virtual methods
.method public addFragmentToBackStack(Landroidx/fragment/app/Fragment;Ljava/lang/String;I)V
    .locals 7
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 282
    invoke-direct {p0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->getFragmentIdInBackStack()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 287
    invoke-static {v1}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->setFragmentAnimationEnabled(Z)V

    .line 289
    invoke-virtual {p0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->getBackStackEntryCount()I

    move-result v2

    if-ltz p3, :cond_5

    if-lt p3, v2, :cond_1

    goto :goto_2

    :cond_1
    const-string v2, ""

    .line 295
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 296
    invoke-virtual {p0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->getBackStackEntryCount()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    :goto_0
    if-lt v4, p3, :cond_3

    .line 297
    invoke-virtual {p0, v4}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->getFragmentInBackStack(I)Landroidx/fragment/app/Fragment;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 299
    invoke-interface {v3, v1, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 300
    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v2

    :cond_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 304
    :cond_3
    iget-object p3, p0, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p3, v2, v5}, Landroidx/fragment/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    .line 306
    invoke-direct {p0, v0, p1, p2, v5}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->showFragment(ILandroidx/fragment/app/Fragment;Ljava/lang/String;Z)V

    .line 307
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/fragment/app/Fragment;

    .line 308
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, v0, p2, p3, v5}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->showFragment(ILandroidx/fragment/app/Fragment;Ljava/lang/String;Z)V

    goto :goto_1

    .line 311
    :cond_4
    invoke-static {v5}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->setFragmentAnimationEnabled(Z)V

    return-void

    :cond_5
    :goto_2
    return-void
.end method

.method public addShowFragment(ILandroidx/fragment/app/Fragment;)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param
    .param p2    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 158
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->addShowFragment(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    return-void
.end method

.method public addShowFragment(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param
    .param p2    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 162
    invoke-direct {p0, p1, p2, p3, v0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->addFragment(ILandroidx/fragment/app/Fragment;Ljava/lang/String;Z)V

    return-void
.end method

.method public appendShowFragment(ILandroidx/fragment/app/Fragment;)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param
    .param p2    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 123
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->appendShowFragment(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    return-void
.end method

.method public appendShowFragment(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param
    .param p2    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 132
    invoke-direct {p0, p1, p2, p3, v0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->showFragment(ILandroidx/fragment/app/Fragment;Ljava/lang/String;Z)V

    return-void
.end method

.method public appendShowFragment(Landroidx/fragment/app/Fragment;)V
    .locals 1
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 119
    iget v0, p0, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->containerViewId:I

    invoke-virtual {p0, v0, p1}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->appendShowFragment(ILandroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public appendShowFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V
    .locals 1
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 127
    invoke-direct {p0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->checkContainerViewId()V

    .line 128
    iget v0, p0, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->containerViewId:I

    invoke-virtual {p0, v0, p1, p2}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->appendShowFragment(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    return-void
.end method

.method public clearFragmentStack()V
    .locals 1

    .line 255
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 256
    invoke-direct {p0, v0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->clearFragmentStack(Landroidx/fragment/app/FragmentTransaction;)V

    .line 257
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public clearTopFragment(Ljava/lang/String;)Z
    .locals 2

    .line 432
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public dismissDialogFragment(Landroidx/fragment/app/DialogFragment;)V
    .locals 0
    .param p1    # Landroidx/fragment/app/DialogFragment;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 240
    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method

.method public dismissDialogFragment(Ljava/lang/Class;)V
    .locals 0
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/fragment/app/DialogFragment;",
            ">;)V"
        }
    .end annotation

    .line 228
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->dismissDialogFragment(Ljava/lang/String;)V

    return-void
.end method

.method public dismissDialogFragment(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 232
    invoke-virtual {p0, p1}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->getFragment(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/DialogFragment;

    if-eqz p1, :cond_1

    .line 233
    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 236
    :cond_0
    invoke-virtual {p0, p1}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->dismissDialogFragment(Landroidx/fragment/app/DialogFragment;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public dispatchHiddenChanged(Z)V
    .locals 3

    .line 459
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 460
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 461
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    invoke-virtual {v2, p1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public dumpFragmentBackStack()Ljava/lang/String;
    .locals 3

    .line 437
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 438
    :goto_0
    invoke-virtual {p0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->getBackStackEntryCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 439
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, ", "

    .line 440
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    :cond_0
    iget-object v2, p0, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v2, v1}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryAt(I)Landroidx/fragment/app/FragmentManager$BackStackEntry;

    move-result-object v2

    .line 443
    invoke-interface {v2}, Landroidx/fragment/app/FragmentManager$BackStackEntry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 446
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public executePendingTransactions()V
    .locals 1

    .line 278
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    return-void
.end method

.method public findFragment(Ljava/lang/Class;)Landroidx/fragment/app/Fragment;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/fragment/app/Fragment;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-direct {p0, p1, v0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->findFragmentInternal(Ljava/lang/Class;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    return-object p1
.end method

.method public getBackStackEntryCount()I
    .locals 1

    .line 251
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    return v0
.end method

.method public getFragment(Ljava/lang/Class;)Landroidx/fragment/app/Fragment;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/fragment/app/Fragment;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    return-object p1
.end method

.method public getFragment(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/fragment/app/Fragment;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    return-object p1
.end method

.method public getFragmentInBackStack(I)Landroidx/fragment/app/Fragment;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/fragment/app/Fragment;",
            ">(I)TT;"
        }
    .end annotation

    .line 421
    invoke-virtual {p0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->getBackStackEntryCount()I

    move-result v0

    if-ltz p1, :cond_1

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 426
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryAt(I)Landroidx/fragment/app/FragmentManager$BackStackEntry;

    move-result-object p1

    .line 427
    invoke-interface {p1}, Landroidx/fragment/app/FragmentManager$BackStackEntry;->getName()Ljava/lang/String;

    move-result-object p1

    .line 428
    invoke-virtual {p0, p1}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->getFragment(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getTopFragmentInBackStack()Landroidx/fragment/app/Fragment;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/fragment/app/Fragment;",
            ">()TT;"
        }
    .end annotation

    .line 416
    invoke-virtual {p0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->getBackStackEntryCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->getFragmentInBackStack(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public varargs isFragmentShow([Ljava/lang/Class;)Z
    .locals 1

    .line 466
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-direct {p0, v0, p1}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->isFragmentShow(Landroidx/fragment/app/FragmentManager;[Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method

.method public popBackStack()V
    .locals 1

    .line 247
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->popBackStackImmediate()Z

    return-void
.end method

.method public removeFragmentFromBackStack(Landroidx/fragment/app/Fragment;)V
    .locals 7
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 349
    invoke-direct {p0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->getFragmentIdInBackStack()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 354
    invoke-static {v1}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->setFragmentAnimationEnabled(Z)V

    .line 356
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 359
    invoke-virtual {p0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->getBackStackEntryCount()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    :goto_0
    const/4 v5, -0x1

    if-ltz v3, :cond_3

    .line 360
    invoke-virtual {p0, v3}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->getFragmentInBackStack(I)Landroidx/fragment/app/Fragment;

    move-result-object v6

    if-eqz v6, :cond_2

    if-ne p1, v6, :cond_1

    goto :goto_1

    .line 366
    :cond_1
    invoke-interface {v2, v1, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_3
    const/4 v3, -0x1

    :goto_1
    if-le v3, v5, :cond_4

    .line 371
    iget-object v1, p0, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, v4}, Landroidx/fragment/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    .line 373
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 374
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2, v4}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->showFragment(ILandroidx/fragment/app/Fragment;Ljava/lang/String;Z)V

    goto :goto_2

    .line 378
    :cond_4
    invoke-static {v4}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->setFragmentAnimationEnabled(Z)V

    return-void
.end method

.method public removeFragmentFromBackStack(Ljava/lang/String;)V
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 316
    invoke-direct {p0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->getFragmentIdInBackStack()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 321
    invoke-static {v1}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->setFragmentAnimationEnabled(Z)V

    .line 323
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 326
    invoke-virtual {p0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->getBackStackEntryCount()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    :goto_0
    const/4 v5, -0x1

    if-ltz v3, :cond_3

    .line 327
    invoke-virtual {p0, v3}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->getFragmentInBackStack(I)Landroidx/fragment/app/Fragment;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 329
    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, p1}, Lus/zoom/zrcsdk/util/StringUtil;->isSameString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    .line 333
    :cond_1
    invoke-interface {v2, v1, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_3
    const/4 v3, -0x1

    :goto_1
    if-le v3, v5, :cond_4

    .line 338
    iget-object v1, p0, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v1, p1, v4}, Landroidx/fragment/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    .line 340
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 341
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2, v4}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->showFragment(ILandroidx/fragment/app/Fragment;Ljava/lang/String;Z)V

    goto :goto_2

    .line 345
    :cond_4
    invoke-static {v4}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->setFragmentAnimationEnabled(Z)V

    return-void
.end method

.method public replaceFragmentInBackStack(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V
    .locals 6
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 382
    invoke-direct {p0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->getFragmentIdInBackStack()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 387
    invoke-static {v1}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->setFragmentAnimationEnabled(Z)V

    .line 389
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 392
    invoke-virtual {p0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->getBackStackEntryCount()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_0
    const/4 v4, -0x1

    if-ltz v2, :cond_2

    .line 393
    invoke-virtual {p0, v2}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->getFragmentInBackStack(I)Landroidx/fragment/app/Fragment;

    move-result-object v5

    if-ne p1, v5, :cond_1

    goto :goto_1

    .line 398
    :cond_1
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    const/4 v2, -0x1

    :goto_1
    if-le v2, v4, :cond_3

    .line 402
    iget-object v2, p0, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1, v3}, Landroidx/fragment/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    .line 404
    invoke-direct {p0, v0, p2, p3, v3}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->showFragment(ILandroidx/fragment/app/Fragment;Ljava/lang/String;Z)V

    .line 406
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/fragment/app/Fragment;

    .line 407
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, v0, p2, p3, v3}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->showFragment(ILandroidx/fragment/app/Fragment;Ljava/lang/String;Z)V

    goto :goto_2

    .line 411
    :cond_3
    invoke-static {v3}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->setFragmentAnimationEnabled(Z)V

    return-void
.end method

.method public replaceShowFragment(ILandroidx/fragment/app/Fragment;)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param
    .param p2    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 106
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->replaceShowFragment(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    return-void
.end method

.method public replaceShowFragment(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param
    .param p2    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 115
    invoke-direct {p0, p1, p2, p3, v0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->showFragment(ILandroidx/fragment/app/Fragment;Ljava/lang/String;Z)V

    return-void
.end method

.method public replaceShowFragment(Landroidx/fragment/app/Fragment;)V
    .locals 2
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 101
    invoke-direct {p0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->checkContainerViewId()V

    .line 102
    iget v0, p0, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->containerViewId:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->replaceShowFragment(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    return-void
.end method

.method public replaceShowFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V
    .locals 1
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 110
    invoke-direct {p0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->checkContainerViewId()V

    .line 111
    iget v0, p0, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->containerViewId:I

    invoke-virtual {p0, v0, p1, p2}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->replaceShowFragment(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    return-void
.end method

.method public setContainerViewId(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    .line 57
    iput p1, p0, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->containerViewId:I

    return-void
.end method

.method public setCustomAnimations(IIII)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/AnimRes;
        .end annotation

        .annotation build Landroidx/annotation/AnimatorRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/AnimRes;
        .end annotation

        .annotation build Landroidx/annotation/AnimatorRes;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/AnimRes;
        .end annotation

        .annotation build Landroidx/annotation/AnimatorRes;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/AnimRes;
        .end annotation

        .annotation build Landroidx/annotation/AnimatorRes;
        .end annotation
    .end param

    .line 50
    iput p1, p0, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->enterAnimation:I

    .line 51
    iput p2, p0, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->exitAnimation:I

    .line 52
    iput p3, p0, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->popEnterAnimation:I

    .line 53
    iput p4, p0, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->popExitAnimation:I

    return-void
.end method

.method public showAddedFragment(Landroidx/fragment/app/Fragment;)V
    .locals 2
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 188
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 189
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 190
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 191
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    :cond_0
    return-void
.end method

.method public showDialogFragment(Ljava/lang/Class;)Landroidx/fragment/app/DialogFragment;
    .locals 5
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/fragment/app/DialogFragment;",
            ">;)",
            "Landroidx/fragment/app/DialogFragment;"
        }
    .end annotation

    .line 196
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 197
    invoke-virtual {p0, v0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->getFragment(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/DialogFragment;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 198
    invoke-virtual {v1}, Landroidx/fragment/app/DialogFragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string p1, "ZRCFragmentManagerHelper"

    const-string v0, "showDialogFragment but fragment isAdded"

    .line 199
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_0
    if-nez v1, :cond_1

    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 204
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/DialogFragment;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "ZRCFragmentManagerHelper"

    const-string v4, "showDialogFragment but fail to newInstance"

    .line 209
    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    invoke-static {v0, v4, v3}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :catch_1
    move-exception p1

    const-string v0, "ZRCFragmentManagerHelper"

    const-string v4, "showDialogFragment but fail to newInstance "

    .line 206
    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    invoke-static {v0, v4, v3}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_1
    move-object p1, v1

    .line 213
    :goto_0
    invoke-virtual {p0, p1, v0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->showDialogFragment(Landroidx/fragment/app/DialogFragment;Ljava/lang/String;)V

    return-object p1
.end method

.method public showDialogFragment(Landroidx/fragment/app/DialogFragment;)V
    .locals 1
    .param p1    # Landroidx/fragment/app/DialogFragment;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 218
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->showDialogFragment(Landroidx/fragment/app/DialogFragment;Ljava/lang/String;)V

    return-void
.end method

.method public showDialogFragment(Landroidx/fragment/app/DialogFragment;Ljava/lang/String;)V
    .locals 1
    .param p1    # Landroidx/fragment/app/DialogFragment;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 222
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 223
    invoke-virtual {p1, v0, p2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentTransaction;Ljava/lang/String;)I

    return-void
.end method
