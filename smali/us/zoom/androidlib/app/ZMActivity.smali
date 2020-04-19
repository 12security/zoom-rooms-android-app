.class public Lus/zoom/androidlib/app/ZMActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "ZMActivity.java"

# interfaces
.implements Lus/zoom/androidlib/util/IUIElement;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/androidlib/app/ZMActivity$RetainedFragment;,
        Lus/zoom/androidlib/app/ZMActivity$GlobalActivityListener;
    }
.end annotation


# static fields
.field private static sActivityStack:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lus/zoom/androidlib/app/ZMActivity;",
            ">;"
        }
    .end annotation
.end field

.field private static sFrontActivity:Lus/zoom/androidlib/app/ZMActivity; = null

.field private static sGlobalActivityListenerList:Lus/zoom/androidlib/util/ListenerList; = null

.field private static sHasActivityCreated:Z = false


# instance fields
.field private mActive:Z

.field private mAutoIncrementIndex:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mDestroyed:Z

.field private mDisableGestureFinish:Z

.field private mDisableGestureFinishView:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private final mGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

.field private mHandler:Landroid/os/Handler;

.field private mPendingPermissionFragments:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/fragment/app/Fragment;",
            ">;>;"
        }
    .end annotation
.end field

.field private mRetainedFragment:Lus/zoom/androidlib/app/ZMActivity$RetainedFragment;

.field private final mTag:Ljava/lang/String;

.field private mTaskMgr:Lus/zoom/androidlib/util/EventTaskManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 66
    new-instance v0, Lus/zoom/androidlib/util/ListenerList;

    invoke-direct {v0}, Lus/zoom/androidlib/util/ListenerList;-><init>()V

    sput-object v0, Lus/zoom/androidlib/app/ZMActivity;->sGlobalActivityListenerList:Lus/zoom/androidlib/util/ListenerList;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lus/zoom/androidlib/app/ZMActivity;->sActivityStack:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 46
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    .line 54
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/androidlib/app/ZMActivity;->mTag:Ljava/lang/String;

    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Lus/zoom/androidlib/app/ZMActivity;->mActive:Z

    .line 57
    iput-boolean v0, p0, Lus/zoom/androidlib/app/ZMActivity;->mDestroyed:Z

    .line 58
    iput-boolean v0, p0, Lus/zoom/androidlib/app/ZMActivity;->mDisableGestureFinish:Z

    const/4 v1, 0x0

    .line 60
    iput-object v1, p0, Lus/zoom/androidlib/app/ZMActivity;->mTaskMgr:Lus/zoom/androidlib/util/EventTaskManager;

    .line 61
    iput-object v1, p0, Lus/zoom/androidlib/app/ZMActivity;->mRetainedFragment:Lus/zoom/androidlib/app/ZMActivity$RetainedFragment;

    .line 68
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lus/zoom/androidlib/app/ZMActivity;->mHandler:Landroid/os/Handler;

    .line 69
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lus/zoom/androidlib/app/ZMActivity;->mPendingPermissionFragments:Landroid/util/SparseArray;

    .line 70
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lus/zoom/androidlib/app/ZMActivity;->mAutoIncrementIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 72
    new-instance v0, Lus/zoom/androidlib/app/ZMActivity$1;

    invoke-direct {v0, p0}, Lus/zoom/androidlib/app/ZMActivity$1;-><init>(Lus/zoom/androidlib/app/ZMActivity;)V

    iput-object v0, p0, Lus/zoom/androidlib/app/ZMActivity;->mGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lus/zoom/androidlib/app/ZMActivity;->mDisableGestureFinishView:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lus/zoom/androidlib/app/ZMActivity;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lus/zoom/androidlib/app/ZMActivity;->notifyMoveToBackground()V

    return-void
.end method

.method static synthetic access$100(Lus/zoom/androidlib/app/ZMActivity;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lus/zoom/androidlib/app/ZMActivity;->notifyMoveToFront()V

    return-void
.end method

.method public static addGlobalActivityListener(Lus/zoom/androidlib/app/ZMActivity$GlobalActivityListener;)V
    .locals 4

    if-nez p0, :cond_0

    return-void

    .line 88
    :cond_0
    sget-object v0, Lus/zoom/androidlib/app/ZMActivity;->sGlobalActivityListenerList:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object v0

    const/4 v1, 0x0

    .line 89
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 90
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_1

    .line 91
    aget-object v2, v0, v1

    check-cast v2, Lus/zoom/androidlib/app/ZMActivity$GlobalActivityListener;

    invoke-static {v2}, Lus/zoom/androidlib/app/ZMActivity;->removeGlobalActivityListener(Lus/zoom/androidlib/app/ZMActivity$GlobalActivityListener;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 95
    :cond_2
    sget-object v0, Lus/zoom/androidlib/app/ZMActivity;->sGlobalActivityListenerList:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0, p0}, Lus/zoom/androidlib/util/ListenerList;->add(Lus/zoom/androidlib/util/IListener;)I

    return-void
.end method

.method private checkOrientation()V
    .locals 4

    .line 729
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lus/zoom/androidlib/app/ZMActivity;->windowIsTranslucent()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    const-string v0, "android.app.Activity"

    .line 731
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mActivityInfo"

    .line 733
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 735
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 736
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 741
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "screenOrientation"

    .line 743
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 745
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v1, -0x1

    .line 746
    invoke-virtual {v2, v0, v1}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public static getActivity(Ljava/lang/String;)Lus/zoom/androidlib/app/ZMActivity;
    .locals 3

    .line 765
    sget-object v0, Lus/zoom/androidlib/app/ZMActivity;->sActivityStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/androidlib/app/ZMActivity;

    .line 766
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getFrontActivity()Lus/zoom/androidlib/app/ZMActivity;
    .locals 1

    .line 122
    sget-object v0, Lus/zoom/androidlib/app/ZMActivity;->sFrontActivity:Lus/zoom/androidlib/app/ZMActivity;

    return-object v0
.end method

.method public static getInProcessActivityCountInStack()I
    .locals 1

    .line 134
    sget-object v0, Lus/zoom/androidlib/app/ZMActivity;->sActivityStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public static getInProcessActivityInStackAt(I)Lus/zoom/androidlib/app/ZMActivity;
    .locals 1

    if-ltz p0, :cond_1

    .line 138
    sget-object v0, Lus/zoom/androidlib/app/ZMActivity;->sActivityStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p0, v0, :cond_0

    goto :goto_0

    .line 140
    :cond_0
    sget-object v0, Lus/zoom/androidlib/app/ZMActivity;->sActivityStack:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lus/zoom/androidlib/app/ZMActivity;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getRetainedFragment()Lus/zoom/androidlib/app/ZMActivity$RetainedFragment;
    .locals 3

    .line 511
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMActivity;->mRetainedFragment:Lus/zoom/androidlib/app/ZMActivity$RetainedFragment;

    if-eqz v0, :cond_0

    return-object v0

    .line 514
    :cond_0
    invoke-virtual {p0}, Lus/zoom/androidlib/app/ZMActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 515
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lus/zoom/androidlib/app/ZMActivity$RetainedFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lus/zoom/androidlib/app/ZMActivity$RetainedFragment;

    return-object v0
.end method

.method public static hasActivityCreated()Z
    .locals 1

    .line 126
    sget-boolean v0, Lus/zoom/androidlib/app/ZMActivity;->sHasActivityCreated:Z

    return v0
.end method

.method private initRetainedFragment()V
    .locals 4

    .line 500
    invoke-direct {p0}, Lus/zoom/androidlib/app/ZMActivity;->getRetainedFragment()Lus/zoom/androidlib/app/ZMActivity$RetainedFragment;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/androidlib/app/ZMActivity;->mRetainedFragment:Lus/zoom/androidlib/app/ZMActivity$RetainedFragment;

    .line 501
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMActivity;->mRetainedFragment:Lus/zoom/androidlib/app/ZMActivity$RetainedFragment;

    if-nez v0, :cond_1

    .line 502
    invoke-virtual {p0}, Lus/zoom/androidlib/app/ZMActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 505
    :cond_0
    new-instance v0, Lus/zoom/androidlib/app/ZMActivity$RetainedFragment;

    invoke-direct {v0}, Lus/zoom/androidlib/app/ZMActivity$RetainedFragment;-><init>()V

    iput-object v0, p0, Lus/zoom/androidlib/app/ZMActivity;->mRetainedFragment:Lus/zoom/androidlib/app/ZMActivity$RetainedFragment;

    .line 506
    invoke-virtual {p0}, Lus/zoom/androidlib/app/ZMActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/androidlib/app/ZMActivity;->mRetainedFragment:Lus/zoom/androidlib/app/ZMActivity$RetainedFragment;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v3, Lus/zoom/androidlib/app/ZMActivity$RetainedFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    :cond_1
    return-void
.end method

.method public static isActivityDestroyed(Landroid/app/Activity;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 147
    :cond_0
    invoke-static {}, Lus/zoom/androidlib/util/OsUtil;->isAtLeastJB_MR1()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 148
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result p0

    return p0

    .line 151
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    :try_start_0
    const-string v2, "isDestroyed"

    .line 155
    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    .line 161
    :try_start_1
    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz p0, :cond_2

    .line 166
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_2
    return v0

    :catch_0
    return v0

    :catch_1
    return v0
.end method

.method public static isAppInForeground()Z
    .locals 1

    .line 776
    sget-object v0, Lus/zoom/androidlib/app/ZMActivity;->sFrontActivity:Lus/zoom/androidlib/app/ZMActivity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lus/zoom/androidlib/app/ZMActivity;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isMotionEventInDisableGestureFinishView(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 200
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMActivity;->mDisableGestureFinishView:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    .line 203
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    .line 204
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    .line 205
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 206
    iget-object v3, p0, Lus/zoom/androidlib/app/ZMActivity;->mDisableGestureFinishView:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 207
    invoke-virtual {v4}, Landroid/view/View;->isShown()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 208
    invoke-virtual {v4, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    float-to-int v4, v0

    float-to-int v5, p1

    .line 209
    invoke-virtual {v2, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1

    :cond_3
    :goto_0
    return v1
.end method

.method private notifiyUserActivityOnUI()V
    .locals 3

    .line 617
    sget-object v0, Lus/zoom/androidlib/app/ZMActivity;->sGlobalActivityListenerList:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object v0

    const/4 v1, 0x0

    .line 618
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 619
    aget-object v2, v0, v1

    check-cast v2, Lus/zoom/androidlib/app/ZMActivity$GlobalActivityListener;

    invoke-interface {v2}, Lus/zoom/androidlib/app/ZMActivity$GlobalActivityListener;->onUserActivityOnUI()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyMoveToBackground()V
    .locals 3

    .line 610
    sget-object v0, Lus/zoom/androidlib/app/ZMActivity;->sGlobalActivityListenerList:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object v0

    const/4 v1, 0x0

    .line 611
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 612
    aget-object v2, v0, v1

    check-cast v2, Lus/zoom/androidlib/app/ZMActivity$GlobalActivityListener;

    invoke-interface {v2}, Lus/zoom/androidlib/app/ZMActivity$GlobalActivityListener;->onUIMoveToBackground()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyMoveToFront()V
    .locals 3

    .line 598
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMActivity;->mTaskMgr:Lus/zoom/androidlib/util/EventTaskManager;

    invoke-virtual {v0, p0}, Lus/zoom/androidlib/util/EventTaskManager;->onResume(Lus/zoom/androidlib/util/IUIElement;)V

    .line 600
    invoke-static {}, Lus/zoom/androidlib/app/ForegroundTaskManager;->getInstance()Lus/zoom/androidlib/app/ForegroundTaskManager;

    move-result-object v0

    .line 601
    invoke-virtual {v0, p0}, Lus/zoom/androidlib/app/ForegroundTaskManager;->onActivityMoveToFront(Lus/zoom/androidlib/app/ZMActivity;)V

    .line 603
    sget-object v0, Lus/zoom/androidlib/app/ZMActivity;->sGlobalActivityListenerList:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0}, Lus/zoom/androidlib/util/ListenerList;->getAll()[Lus/zoom/androidlib/util/IListener;

    move-result-object v0

    const/4 v1, 0x0

    .line 604
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 605
    aget-object v2, v0, v1

    check-cast v2, Lus/zoom/androidlib/app/ZMActivity$GlobalActivityListener;

    invoke-interface {v2, p0}, Lus/zoom/androidlib/app/ZMActivity$GlobalActivityListener;->onActivityMoveToFront(Lus/zoom/androidlib/app/ZMActivity;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private onRequestPermissionsResultForFragment(I[Ljava/lang/String;[I)V
    .locals 4

    shr-int/lit8 v0, p1, 0x10

    const v1, 0xffff

    and-int/2addr v0, v1

    if-eqz v0, :cond_3

    add-int/lit8 v0, v0, -0x1

    const/4 v2, 0x0

    .line 311
    iget-object v3, p0, Lus/zoom/androidlib/app/ZMActivity;->mPendingPermissionFragments:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_0

    .line 313
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 314
    iget-object v3, p0, Lus/zoom/androidlib/app/ZMActivity;->mPendingPermissionFragments:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->remove(I)V

    :cond_0
    if-nez v2, :cond_1

    goto :goto_0

    .line 320
    :cond_1
    instance-of v0, v2, Lus/zoom/androidlib/app/ZMFragment;

    if-eqz v0, :cond_2

    .line 321
    check-cast v2, Lus/zoom/androidlib/app/ZMFragment;

    and-int/2addr p1, v1

    .line 322
    invoke-virtual {v2, p1, p2, p3}, Lus/zoom/androidlib/app/ZMFragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    goto :goto_0

    .line 323
    :cond_2
    instance-of v0, v2, Lus/zoom/androidlib/app/ZMDialogFragment;

    if-eqz v0, :cond_3

    .line 324
    check-cast v2, Lus/zoom/androidlib/app/ZMDialogFragment;

    and-int/2addr p1, v1

    .line 325
    invoke-virtual {v2, p1, p2, p3}, Lus/zoom/androidlib/app/ZMDialogFragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    :cond_3
    :goto_0
    return-void
.end method

.method private performMoveToBackground()V
    .locals 4

    .line 558
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lus/zoom/androidlib/app/ZMActivity$2;

    invoke-direct {v1, p0}, Lus/zoom/androidlib/app/ZMActivity$2;-><init>(Lus/zoom/androidlib/app/ZMActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private performMoveToFront()V
    .locals 2

    .line 588
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lus/zoom/androidlib/app/ZMActivity$3;

    invoke-direct {v1, p0}, Lus/zoom/androidlib/app/ZMActivity$3;-><init>(Lus/zoom/androidlib/app/ZMActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static removeGlobalActivityListener(Lus/zoom/androidlib/app/ZMActivity$GlobalActivityListener;)V
    .locals 1

    .line 99
    sget-object v0, Lus/zoom/androidlib/app/ZMActivity;->sGlobalActivityListenerList:Lus/zoom/androidlib/util/ListenerList;

    invoke-virtual {v0, p0}, Lus/zoom/androidlib/util/ListenerList;->remove(Lus/zoom/androidlib/util/IListener;)I

    return-void
.end method

.method public static setHasActivityCreated(Z)V
    .locals 0

    .line 130
    sput-boolean p0, Lus/zoom/androidlib/app/ZMActivity;->sHasActivityCreated:Z

    return-void
.end method


# virtual methods
.method public addDisableGestureFinishView(Landroid/view/View;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 176
    :cond_0
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMActivity;->mDisableGestureFinishView:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 177
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMActivity;->mDisableGestureFinishView:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public disableFinishActivityByGesture(Z)V
    .locals 0

    .line 196
    iput-boolean p1, p0, Lus/zoom/androidlib/app/ZMActivity;->mDisableGestureFinish:Z

    return-void
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 454
    invoke-direct {p0}, Lus/zoom/androidlib/app/ZMActivity;->notifiyUserActivityOnUI()V

    .line 455
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .line 460
    invoke-direct {p0}, Lus/zoom/androidlib/app/ZMActivity;->notifiyUserActivityOnUI()V

    .line 461
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .line 467
    invoke-direct {p0}, Lus/zoom/androidlib/app/ZMActivity;->notifiyUserActivityOnUI()V

    .line 468
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    .line 473
    invoke-direct {p0}, Lus/zoom/androidlib/app/ZMActivity;->notifiyUserActivityOnUI()V

    .line 474
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 479
    invoke-direct {p0, p1}, Lus/zoom/androidlib/app/ZMActivity;->isMotionEventInDisableGestureFinishView(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lus/zoom/androidlib/app/ZMActivity;->mDisableGestureFinish:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lus/zoom/androidlib/app/ZMActivity;->mGestureDetector:Landroid/view/GestureDetector;

    .line 480
    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 483
    :cond_0
    invoke-direct {p0}, Lus/zoom/androidlib/app/ZMActivity;->notifiyUserActivityOnUI()V

    .line 485
    :try_start_0
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 495
    invoke-direct {p0}, Lus/zoom/androidlib/app/ZMActivity;->notifiyUserActivityOnUI()V

    .line 496
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public finishActivityFromFragment(Landroidx/fragment/app/Fragment;I)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 243
    invoke-virtual {p0, v0}, Lus/zoom/androidlib/app/ZMActivity;->finishActivity(I)V

    return-void

    :cond_1
    const/high16 v0, -0x10000

    and-int/2addr v0, p2

    if-nez v0, :cond_3

    .line 251
    invoke-virtual {p0, p1}, Lus/zoom/androidlib/app/ZMActivity;->getFragmentIndex(Landroidx/fragment/app/Fragment;)I

    move-result p1

    if-gez p1, :cond_2

    return-void

    :cond_2
    add-int/lit8 p1, p1, 0x1

    shl-int/lit8 p1, p1, 0x10

    const v0, 0xffff

    and-int/2addr p2, v0

    add-int/2addr p1, p2

    .line 258
    invoke-virtual {p0, p1}, Lus/zoom/androidlib/app/ZMActivity;->finishActivity(I)V

    return-void

    .line 248
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Can only use lower 16 bits for requestCode"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getEventTaskManager()Lus/zoom/androidlib/util/EventTaskManager;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 107
    invoke-direct {p0}, Lus/zoom/androidlib/app/ZMActivity;->getRetainedFragment()Lus/zoom/androidlib/app/ZMActivity$RetainedFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, v0, Lus/zoom/androidlib/app/ZMActivity$RetainedFragment;->mTaskMgr:Lus/zoom/androidlib/util/EventTaskManager;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getFragmentIndex(Landroidx/fragment/app/Fragment;)I
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, -0x1

    return p1

    .line 349
    :cond_0
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMActivity;->mAutoIncrementIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 350
    iget-object v1, p0, Lus/zoom/androidlib/app/ZMActivity;->mPendingPermissionFragments:Landroid/util/SparseArray;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return v0
.end method

.method public final getNonNullEventTaskManagerOrThrowException()Lus/zoom/androidlib/util/EventTaskManager;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 115
    invoke-direct {p0}, Lus/zoom/androidlib/app/ZMActivity;->getRetainedFragment()Lus/zoom/androidlib/app/ZMActivity$RetainedFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, v0, Lus/zoom/androidlib/app/ZMActivity$RetainedFragment;->mTaskMgr:Lus/zoom/androidlib/util/EventTaskManager;

    return-object v0

    .line 118
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

.method public final isActive()Z
    .locals 1

    .line 103
    iget-boolean v0, p0, Lus/zoom/androidlib/app/ZMActivity;->mActive:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lus/zoom/androidlib/app/ZMActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lus/zoom/androidlib/app/ZMActivity;->isActivityDestroyed(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDestroyed()Z
    .locals 1

    .line 231
    invoke-static {}, Lus/zoom/androidlib/util/OsUtil;->isAtLeastJB_MR1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->isDestroyed()Z

    move-result v0

    return v0

    .line 234
    :cond_0
    iget-boolean v0, p0, Lus/zoom/androidlib/app/ZMActivity;->mDestroyed:Z

    return v0
.end method

.method public isInMultiWindowMode()Z
    .locals 1

    .line 189
    invoke-static {}, Lus/zoom/androidlib/util/OsUtil;->isAtLeastN()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->isInMultiWindowMode()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onBackPressed()V
    .locals 4

    .line 678
    invoke-virtual {p0}, Lus/zoom/androidlib/app/ZMActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 679
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 680
    invoke-virtual {p0}, Lus/zoom/androidlib/app/ZMActivity;->finish()V

    return-void

    .line 685
    :cond_0
    :try_start_0
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 687
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in ZMActivity.onBackPressed(). class="

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

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    .line 441
    invoke-static {p0}, Lus/zoom/androidlib/util/LanguageUtil;->getAppLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 442
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lus/zoom/androidlib/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 443
    invoke-virtual {p0}, Lus/zoom/androidlib/app/ZMActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 444
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 445
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .line 446
    iput-object v0, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 447
    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 449
    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 412
    invoke-direct {p0}, Lus/zoom/androidlib/app/ZMActivity;->checkOrientation()V

    const/4 v0, 0x1

    .line 413
    invoke-static {v0}, Lus/zoom/androidlib/app/ZMActivity;->setHasActivityCreated(Z)V

    const/4 v0, 0x0

    .line 415
    iput-boolean v0, p0, Lus/zoom/androidlib/app/ZMActivity;->mDestroyed:Z

    .line 419
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 421
    invoke-static {p0}, Lus/zoom/androidlib/util/LanguageUtil;->getAppLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 422
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lus/zoom/androidlib/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 423
    invoke-virtual {p0}, Lus/zoom/androidlib/app/ZMActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 424
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 425
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .line 426
    iput-object p1, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 427
    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 430
    :cond_0
    invoke-direct {p0}, Lus/zoom/androidlib/app/ZMActivity;->initRetainedFragment()V

    .line 431
    invoke-direct {p0}, Lus/zoom/androidlib/app/ZMActivity;->getRetainedFragment()Lus/zoom/androidlib/app/ZMActivity$RetainedFragment;

    move-result-object p1

    iget-object p1, p1, Lus/zoom/androidlib/app/ZMActivity$RetainedFragment;->mTaskMgr:Lus/zoom/androidlib/util/EventTaskManager;

    iput-object p1, p0, Lus/zoom/androidlib/app/ZMActivity;->mTaskMgr:Lus/zoom/androidlib/util/EventTaskManager;

    .line 433
    sget-object p1, Lus/zoom/androidlib/app/ZMActivity;->sActivityStack:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 435
    sget p1, Lus/zoom/androidlib/R$color;->zm_title_bar_dark_bg:I

    invoke-static {p0, v0, p1}, Lus/zoom/androidlib/util/UIUtil;->renderStatueBar(Landroid/app/Activity;ZI)V

    .line 436
    new-instance p1, Landroid/view/GestureDetector;

    iget-object v0, p0, Lus/zoom/androidlib/app/ZMActivity;->mGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-direct {p1, p0, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lus/zoom/androidlib/app/ZMActivity;->mGestureDetector:Landroid/view/GestureDetector;

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    const/4 v0, 0x0

    .line 523
    iput-boolean v0, p0, Lus/zoom/androidlib/app/ZMActivity;->mActive:Z

    .line 525
    sget-object v0, Lus/zoom/androidlib/app/ZMActivity;->sFrontActivity:Lus/zoom/androidlib/app/ZMActivity;

    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    .line 526
    sput-object v0, Lus/zoom/androidlib/app/ZMActivity;->sFrontActivity:Lus/zoom/androidlib/app/ZMActivity;

    .line 528
    :cond_0
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMActivity;->mTaskMgr:Lus/zoom/androidlib/util/EventTaskManager;

    invoke-virtual {v0, p0}, Lus/zoom/androidlib/util/EventTaskManager;->onUIDestroy(Lus/zoom/androidlib/util/IUIElement;)V

    .line 530
    invoke-virtual {p0}, Lus/zoom/androidlib/app/ZMActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 531
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMActivity;->mTaskMgr:Lus/zoom/androidlib/util/EventTaskManager;

    invoke-virtual {v0}, Lus/zoom/androidlib/util/EventTaskManager;->destroy()V

    .line 534
    :cond_1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onDestroy()V

    .line 536
    sget-object v0, Lus/zoom/androidlib/app/ZMActivity;->sActivityStack:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    .line 538
    iput-boolean v0, p0, Lus/zoom/androidlib/app/ZMActivity;->mDestroyed:Z

    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    .line 218
    iget-boolean p4, p0, Lus/zoom/androidlib/app/ZMActivity;->mDisableGestureFinish:Z

    if-nez p4, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 219
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result p4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    sub-float/2addr p4, v0

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p4

    .line 220
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const p2, 0x453b8000    # 3000.0f

    cmpl-float p2, p3, p2

    if-lez p2, :cond_0

    const/4 p2, 0x0

    cmpl-float p2, p4, p2

    if-lez p2, :cond_0

    .line 221
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 p2, 0x42480000    # 50.0f

    invoke-static {p0, p2}, Lus/zoom/androidlib/util/UIUtil;->dip2px(Landroid/content/Context;F)I

    move-result p2

    int-to-float p2, p2

    cmpg-float p1, p1, p2

    if-gez p1, :cond_0

    .line 222
    invoke-virtual {p0}, Lus/zoom/androidlib/app/ZMActivity;->onBackPressed()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected onPause()V
    .locals 1

    .line 545
    invoke-virtual {p0}, Lus/zoom/androidlib/app/ZMActivity;->isInMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 546
    iput-boolean v0, p0, Lus/zoom/androidlib/app/ZMActivity;->mActive:Z

    .line 547
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMActivity;->mTaskMgr:Lus/zoom/androidlib/util/EventTaskManager;

    invoke-virtual {v0, p0}, Lus/zoom/androidlib/util/EventTaskManager;->onPause(Lus/zoom/androidlib/util/IUIElement;)V

    .line 550
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 552
    invoke-virtual {p0}, Lus/zoom/androidlib/app/ZMActivity;->isInMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 553
    invoke-direct {p0}, Lus/zoom/androidlib/app/ZMActivity;->performMoveToBackground()V

    :cond_1
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2
    .param p2    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    shr-int/lit8 v0, p1, 0x10

    const v1, 0xffff

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 283
    invoke-direct {p0, p1, p2, p3}, Lus/zoom/androidlib/app/ZMActivity;->onRequestPermissionsResultForFragment(I[Ljava/lang/String;[I)V

    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 671
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 571
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    const/4 v0, 0x1

    .line 573
    iput-boolean v0, p0, Lus/zoom/androidlib/app/ZMActivity;->mActive:Z

    .line 574
    sput-object p0, Lus/zoom/androidlib/app/ZMActivity;->sFrontActivity:Lus/zoom/androidlib/app/ZMActivity;

    .line 576
    invoke-virtual {p0}, Lus/zoom/androidlib/app/ZMActivity;->isInMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 577
    invoke-direct {p0}, Lus/zoom/androidlib/app/ZMActivity;->performMoveToFront()V

    :cond_0
    const/4 v0, 0x0

    .line 581
    invoke-static {p0, v0}, Lus/zoom/androidlib/util/UIUtil;->setBadgeNumForEMUI(Landroid/content/Context;I)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const/4 v0, 0x0

    .line 658
    iput-boolean v0, p0, Lus/zoom/androidlib/app/ZMActivity;->mActive:Z

    if-eqz p1, :cond_0

    const-string v0, "WORKAROUND_FOR_BUG_19917_KEY"

    const-string v1, "WORKAROUND_FOR_BUG_19917_VALUE"

    .line 663
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStart()V
    .locals 1

    const/4 v0, 0x1

    .line 627
    iput-boolean v0, p0, Lus/zoom/androidlib/app/ZMActivity;->mActive:Z

    .line 629
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStart()V

    .line 631
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMActivity;->mTaskMgr:Lus/zoom/androidlib/util/EventTaskManager;

    invoke-virtual {v0, p0}, Lus/zoom/androidlib/util/EventTaskManager;->onStart(Lus/zoom/androidlib/util/IUIElement;)V

    .line 633
    invoke-virtual {p0}, Lus/zoom/androidlib/app/ZMActivity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 634
    sput-object p0, Lus/zoom/androidlib/app/ZMActivity;->sFrontActivity:Lus/zoom/androidlib/app/ZMActivity;

    .line 635
    invoke-direct {p0}, Lus/zoom/androidlib/app/ZMActivity;->performMoveToFront()V

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    const/4 v0, 0x0

    .line 643
    iput-boolean v0, p0, Lus/zoom/androidlib/app/ZMActivity;->mActive:Z

    .line 645
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMActivity;->mTaskMgr:Lus/zoom/androidlib/util/EventTaskManager;

    invoke-virtual {v0, p0}, Lus/zoom/androidlib/util/EventTaskManager;->onStop(Lus/zoom/androidlib/util/IUIElement;)V

    .line 647
    invoke-virtual {p0}, Lus/zoom/androidlib/app/ZMActivity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 648
    invoke-direct {p0}, Lus/zoom/androidlib/app/ZMActivity;->performMoveToBackground()V

    .line 651
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStop()V

    return-void
.end method

.method public removeDisableGestureFinishView(Landroid/view/View;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 185
    :cond_0
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMActivity;->mDisableGestureFinishView:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setRequestedOrientation(I)V
    .locals 2

    .line 693
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lus/zoom/androidlib/app/ZMActivity;->windowIsTranslucent()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    return-void

    .line 699
    :cond_1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->setRequestedOrientation(I)V

    return-void
.end method

.method public windowIsTranslucent()Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.android.internal.R$styleable"

    .line 705
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "Window"

    .line 706
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x1

    .line 707
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 708
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    return v0

    .line 713
    :cond_0
    check-cast v2, [I

    check-cast v2, [I

    invoke-virtual {p0, v2}, Lus/zoom/androidlib/app/ZMActivity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    const-string v4, "Window_windowIsTranslucent"

    .line 715
    invoke-virtual {v1, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 716
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 717
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 718
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    .line 719
    invoke-virtual {v2, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 720
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return v0
.end method

.method public zm_checkSelfPermission(Ljava/lang/String;)I
    .locals 3

    .line 336
    invoke-static {p1}, Lus/zoom/androidlib/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    .line 340
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {p0, p1, v0, v2}, Lus/zoom/androidlib/app/ZMActivity;->checkPermission(Ljava/lang/String;II)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return v1
.end method

.method public zm_requestPermissions([Ljava/lang/String;I)V
    .locals 0

    .line 332
    invoke-static {p0, p1, p2}, Lus/zoom/androidlib/app/ZMActivityCompat;->requestPermissionsCompat(Lus/zoom/androidlib/app/ZMActivity;[Ljava/lang/String;I)V

    return-void
.end method
