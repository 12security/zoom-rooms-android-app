.class public Lus/zoom/androidlib/app/ZMTipFragment;
.super Lus/zoom/androidlib/app/ZMFragment;
.source "ZMTipFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ZMTipFragment"

.field private static sTipShownMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mAutoFocus:Z

.field private mCanDismiss:Z

.field private mDismissRunnable:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field private mShowsTip:Z

.field private mTag:Ljava/lang/String;

.field private mTip:Lus/zoom/androidlib/widget/ZMTip;

.field private mbRemoved:Z

.field private mlDuration:J

.field private mlShowTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lus/zoom/androidlib/app/ZMTipFragment;->sTipShownMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 25
    invoke-direct {p0}, Lus/zoom/androidlib/app/ZMFragment;-><init>()V

    const/4 v0, 0x1

    .line 29
    iput-boolean v0, p0, Lus/zoom/androidlib/app/ZMTipFragment;->mbRemoved:Z

    const-wide/16 v1, 0x0

    .line 31
    iput-wide v1, p0, Lus/zoom/androidlib/app/ZMTipFragment;->mlShowTime:J

    .line 32
    iput-wide v1, p0, Lus/zoom/androidlib/app/ZMTipFragment;->mlDuration:J

    const-string v1, ""

    .line 33
    iput-object v1, p0, Lus/zoom/androidlib/app/ZMTipFragment;->mTag:Ljava/lang/String;

    .line 34
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lus/zoom/androidlib/app/ZMTipFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    .line 38
    iput-boolean v1, p0, Lus/zoom/androidlib/app/ZMTipFragment;->mCanDismiss:Z

    .line 39
    iput-boolean v1, p0, Lus/zoom/androidlib/app/ZMTipFragment;->mShowsTip:Z

    .line 40
    iput-boolean v0, p0, Lus/zoom/androidlib/app/ZMTipFragment;->mAutoFocus:Z

    return-void
.end method

.method private getTipLayer()Lus/zoom/androidlib/widget/ZMTipLayer;
    .locals 4

    .line 159
    invoke-virtual {p0}, Lus/zoom/androidlib/app/ZMTipFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "tipLayer"

    const-string v2, "id"

    .line 160
    sget v3, Lus/zoom/androidlib/R$id;->zm_used_for_package_name_retrieval:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 164
    :cond_0
    invoke-virtual {p0, v0}, Lus/zoom/androidlib/app/ZMTipFragment;->getZMTipLayer(I)Lus/zoom/androidlib/widget/ZMTipLayer;

    move-result-object v0

    return-object v0
.end method

.method public static isTipShown(Ljava/lang/String;)Z
    .locals 1

    .line 243
    sget-object v0, Lus/zoom/androidlib/app/ZMTipFragment;->sTipShownMap:Ljava/util/HashMap;

    invoke-static {p0}, Lus/zoom/androidlib/util/StringUtil;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_0

    .line 244
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private performResume()V
    .locals 5

    .line 106
    iget-boolean v0, p0, Lus/zoom/androidlib/app/ZMTipFragment;->mShowsTip:Z

    if-nez v0, :cond_0

    return-void

    .line 109
    :cond_0
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMTipFragment;->mTip:Lus/zoom/androidlib/widget/ZMTip;

    if-eqz v0, :cond_2

    .line 110
    invoke-direct {p0}, Lus/zoom/androidlib/app/ZMTipFragment;->getTipLayer()Lus/zoom/androidlib/widget/ZMTipLayer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 114
    iget-object v1, p0, Lus/zoom/androidlib/app/ZMTipFragment;->mTip:Lus/zoom/androidlib/widget/ZMTip;

    invoke-virtual {v1, v0}, Lus/zoom/androidlib/widget/ZMTip;->show(Lus/zoom/androidlib/widget/ZMTipLayer;)V

    const/4 v0, 0x0

    .line 115
    iput-boolean v0, p0, Lus/zoom/androidlib/app/ZMTipFragment;->mbRemoved:Z

    const/4 v0, 0x1

    .line 116
    iput-boolean v0, p0, Lus/zoom/androidlib/app/ZMTipFragment;->mCanDismiss:Z

    goto :goto_0

    .line 112
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot find a ZPTipLayer width id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lus/zoom/androidlib/R;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".id.tipLayer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_2
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lus/zoom/androidlib/app/ZMTipFragment;->mlShowTime:J

    .line 121
    iget-wide v0, p0, Lus/zoom/androidlib/app/ZMTipFragment;->mlDuration:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_3

    .line 122
    new-instance v0, Lus/zoom/androidlib/app/ZMTipFragment$1;

    invoke-direct {v0, p0}, Lus/zoom/androidlib/app/ZMTipFragment$1;-><init>(Lus/zoom/androidlib/app/ZMTipFragment;)V

    iput-object v0, p0, Lus/zoom/androidlib/app/ZMTipFragment;->mDismissRunnable:Ljava/lang/Runnable;

    .line 127
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMTipFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lus/zoom/androidlib/app/ZMTipFragment;->mDismissRunnable:Ljava/lang/Runnable;

    iget-wide v2, p0, Lus/zoom/androidlib/app/ZMTipFragment;->mlDuration:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 130
    :cond_3
    invoke-virtual {p0}, Lus/zoom/androidlib/app/ZMTipFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 133
    iget-boolean v1, p0, Lus/zoom/androidlib/app/ZMTipFragment;->mAutoFocus:Z

    if-eqz v1, :cond_4

    invoke-static {v0}, Lus/zoom/androidlib/util/AccessibilityUtil;->isSpokenFeedbackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 135
    :try_start_0
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMTipFragment;->mTip:Lus/zoom/androidlib/widget/ZMTip;

    if-eqz v0, :cond_4

    .line 136
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMTipFragment;->mTip:Lus/zoom/androidlib/widget/ZMTip;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lus/zoom/androidlib/widget/ZMTip;->sendAccessibilityEvent(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 3

    .line 217
    iget-boolean v0, p0, Lus/zoom/androidlib/app/ZMTipFragment;->mbRemoved:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lus/zoom/androidlib/app/ZMTipFragment;->mCanDismiss:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 220
    iput-boolean v0, p0, Lus/zoom/androidlib/app/ZMTipFragment;->mShowsTip:Z

    const/4 v1, 0x1

    .line 221
    iput-boolean v1, p0, Lus/zoom/androidlib/app/ZMTipFragment;->mbRemoved:Z

    .line 222
    sget-object v1, Lus/zoom/androidlib/app/ZMTipFragment;->sTipShownMap:Ljava/util/HashMap;

    iget-object v2, p0, Lus/zoom/androidlib/app/ZMTipFragment;->mTag:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMTipFragment;->mTip:Lus/zoom/androidlib/widget/ZMTip;

    if-eqz v0, :cond_1

    .line 224
    invoke-virtual {v0}, Lus/zoom/androidlib/widget/ZMTip;->dismiss()V

    :cond_1
    const/4 v0, 0x0

    .line 225
    iput-object v0, p0, Lus/zoom/androidlib/app/ZMTipFragment;->mTip:Lus/zoom/androidlib/widget/ZMTip;

    .line 227
    invoke-virtual {p0}, Lus/zoom/androidlib/app/ZMTipFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 229
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 230
    invoke-virtual {v0, p0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_2
    return-void

    :cond_3
    :goto_0
    return-void
.end method

.method public getShowsTip()Z
    .locals 1

    .line 239
    iget-boolean v0, p0, Lus/zoom/androidlib/app/ZMTipFragment;->mShowsTip:Z

    return v0
.end method

.method public getTip()Lus/zoom/androidlib/widget/ZMTip;
    .locals 1

    .line 235
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMTipFragment;->mTip:Lus/zoom/androidlib/widget/ZMTip;

    return-object v0
.end method

.method protected getZMTipLayer(I)Lus/zoom/androidlib/widget/ZMTipLayer;
    .locals 1

    .line 171
    invoke-virtual {p0}, Lus/zoom/androidlib/app/ZMTipFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lus/zoom/androidlib/widget/ZMTipLayer;

    return-object p1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    .line 46
    invoke-super {p0, p1}, Lus/zoom/androidlib/app/ZMFragment;->onActivityCreated(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "tipState"

    .line 50
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    const-string v1, "duration"

    .line 51
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lus/zoom/androidlib/app/ZMTipFragment;->mlDuration:J

    const-string v1, "showsTip"

    .line 52
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lus/zoom/androidlib/app/ZMTipFragment;->mShowsTip:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 55
    :goto_0
    invoke-virtual {p0}, Lus/zoom/androidlib/app/ZMTipFragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 57
    invoke-virtual {v1, v0}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 60
    :cond_1
    iget-boolean v2, p0, Lus/zoom/androidlib/app/ZMTipFragment;->mShowsTip:Z

    if-eqz v2, :cond_5

    .line 61
    invoke-virtual {p0}, Lus/zoom/androidlib/app/ZMTipFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {p0, p1}, Lus/zoom/androidlib/app/ZMTipFragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-virtual {p0, v2, v3, p1}, Lus/zoom/androidlib/app/ZMTipFragment;->onCreateTip(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/os/Bundle;)Lus/zoom/androidlib/widget/ZMTip;

    move-result-object p1

    if-nez p1, :cond_3

    if-nez v1, :cond_2

    return-void

    .line 65
    :cond_2
    new-instance p1, Lus/zoom/androidlib/widget/ZMTip;

    invoke-virtual {p0}, Lus/zoom/androidlib/app/ZMTipFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lus/zoom/androidlib/widget/ZMTip;-><init>(Landroid/content/Context;)V

    .line 66
    invoke-virtual {p1, v1}, Lus/zoom/androidlib/widget/ZMTip;->addView(Landroid/view/View;)V

    goto :goto_1

    :cond_3
    if-nez v1, :cond_4

    if-eqz v0, :cond_4

    .line 68
    invoke-virtual {p1, v0}, Lus/zoom/androidlib/widget/ZMTip;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 70
    :cond_4
    :goto_1
    iput-object p1, p0, Lus/zoom/androidlib/app/ZMTipFragment;->mTip:Lus/zoom/androidlib/widget/ZMTip;

    :cond_5
    return-void
.end method

.method public onCreateTip(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/os/Bundle;)Lus/zoom/androidlib/widget/ZMTip;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public onResume()V
    .locals 1

    .line 98
    invoke-super {p0}, Lus/zoom/androidlib/app/ZMFragment;->onResume()V

    .line 100
    invoke-virtual {p0}, Lus/zoom/androidlib/app/ZMTipFragment;->isInMultWindowMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    invoke-direct {p0}, Lus/zoom/androidlib/app/ZMTipFragment;->performResume()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 6
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 76
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMTipFragment;->mDismissRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 77
    iget-object v1, p0, Lus/zoom/androidlib/app/ZMTipFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 80
    :cond_0
    iget-wide v0, p0, Lus/zoom/androidlib/app/ZMTipFragment;->mlDuration:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lus/zoom/androidlib/app/ZMTipFragment;->mlShowTime:J

    sub-long/2addr v2, v4

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lus/zoom/androidlib/app/ZMTipFragment;->mlDuration:J

    .line 82
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 83
    invoke-virtual {p0}, Lus/zoom/androidlib/app/ZMTipFragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 85
    invoke-virtual {v1, v0}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    goto :goto_0

    .line 86
    :cond_1
    iget-object v1, p0, Lus/zoom/androidlib/app/ZMTipFragment;->mTip:Lus/zoom/androidlib/widget/ZMTip;

    if-eqz v1, :cond_2

    .line 87
    invoke-virtual {v1, v0}, Lus/zoom/androidlib/widget/ZMTip;->saveHierarchyState(Landroid/util/SparseArray;)V

    :cond_2
    :goto_0
    const-string v1, "tipState"

    .line 89
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    const-string v0, "duration"

    .line 90
    iget-wide v1, p0, Lus/zoom/androidlib/app/ZMTipFragment;->mlDuration:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "showsTip"

    .line 91
    iget-boolean v1, p0, Lus/zoom/androidlib/app/ZMTipFragment;->mShowsTip:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 92
    invoke-super {p0, p1}, Lus/zoom/androidlib/app/ZMFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 93
    iput-boolean p1, p0, Lus/zoom/androidlib/app/ZMTipFragment;->mCanDismiss:Z

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 148
    invoke-super {p0}, Lus/zoom/androidlib/app/ZMFragment;->onStart()V

    .line 149
    invoke-virtual {p0}, Lus/zoom/androidlib/app/ZMTipFragment;->isInMultWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    invoke-direct {p0}, Lus/zoom/androidlib/app/ZMTipFragment;->performResume()V

    :cond_0
    return-void
.end method

.method public show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 175
    invoke-virtual {p0, p1, p2, v0, v1}, Lus/zoom/androidlib/app/ZMTipFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;J)V

    return-void
.end method

.method public show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;J)V
    .locals 3

    .line 179
    iget-boolean v0, p0, Lus/zoom/androidlib/app/ZMTipFragment;->mbRemoved:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 182
    iput-boolean v0, p0, Lus/zoom/androidlib/app/ZMTipFragment;->mShowsTip:Z

    const/4 v1, 0x0

    .line 183
    iput-boolean v1, p0, Lus/zoom/androidlib/app/ZMTipFragment;->mbRemoved:Z

    .line 184
    iput-wide p3, p0, Lus/zoom/androidlib/app/ZMTipFragment;->mlDuration:J

    .line 185
    invoke-static {p2}, Lus/zoom/androidlib/util/StringUtil;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lus/zoom/androidlib/app/ZMTipFragment;->mTag:Ljava/lang/String;

    .line 186
    sget-object p3, Lus/zoom/androidlib/app/ZMTipFragment;->sTipShownMap:Ljava/util/HashMap;

    iget-object p4, p0, Lus/zoom/androidlib/app/ZMTipFragment;->mTag:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p3, p4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    :try_start_0
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "ZMTipFragment"

    const-string p3, ""

    .line 190
    new-array p4, v1, [Ljava/lang/Object;

    invoke-static {p2, p1, p3, p4}, Lus/zoom/androidlib/util/ZMLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 192
    :goto_0
    iput-boolean v0, p0, Lus/zoom/androidlib/app/ZMTipFragment;->mCanDismiss:Z

    return-void
.end method

.method public show(Landroidx/fragment/app/FragmentTransaction;Ljava/lang/String;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 196
    invoke-virtual {p0, p1, p2, v0, v1}, Lus/zoom/androidlib/app/ZMTipFragment;->show(Landroidx/fragment/app/FragmentTransaction;Ljava/lang/String;J)V

    return-void
.end method

.method public show(Landroidx/fragment/app/FragmentTransaction;Ljava/lang/String;J)V
    .locals 3

    .line 200
    iget-boolean v0, p0, Lus/zoom/androidlib/app/ZMTipFragment;->mbRemoved:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 203
    iput-boolean v0, p0, Lus/zoom/androidlib/app/ZMTipFragment;->mShowsTip:Z

    const/4 v1, 0x0

    .line 204
    iput-boolean v1, p0, Lus/zoom/androidlib/app/ZMTipFragment;->mbRemoved:Z

    .line 205
    iput-wide p3, p0, Lus/zoom/androidlib/app/ZMTipFragment;->mlDuration:J

    .line 206
    invoke-static {p2}, Lus/zoom/androidlib/util/StringUtil;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lus/zoom/androidlib/app/ZMTipFragment;->mTag:Ljava/lang/String;

    .line 207
    sget-object p3, Lus/zoom/androidlib/app/ZMTipFragment;->sTipShownMap:Ljava/util/HashMap;

    iget-object p4, p0, Lus/zoom/androidlib/app/ZMTipFragment;->mTag:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p3, p4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    :try_start_0
    invoke-virtual {p1, p0, p2}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "ZMTipFragment"

    const-string p3, ""

    .line 211
    new-array p4, v1, [Ljava/lang/Object;

    invoke-static {p2, p1, p3, p4}, Lus/zoom/androidlib/util/ZMLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 213
    :goto_0
    iput-boolean v0, p0, Lus/zoom/androidlib/app/ZMTipFragment;->mCanDismiss:Z

    return-void
.end method
