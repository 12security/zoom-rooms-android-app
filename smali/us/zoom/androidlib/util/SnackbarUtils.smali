.class public Lus/zoom/androidlib/util/SnackbarUtils;
.super Ljava/lang/Object;
.source "SnackbarUtils.java"


# static fields
.field private static final color_confirm:I = -0xf18e15

.field private static final color_error:I = -0x4ddbdc

.field private static final color_info:I = -0xf18e15

.field private static final color_warning:I = -0x8bd2

.field private static snackbarWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/material/snackbar/Snackbar;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Disable null params"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .param p1    # Ljava/lang/ref/WeakReference;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/material/snackbar/Snackbar;",
            ">;)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    sput-object p1, Lus/zoom/androidlib/util/SnackbarUtils;->snackbarWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static Long(Landroid/view/View;Ljava/lang/String;)Lus/zoom/androidlib/util/SnackbarUtils;
    .locals 3

    .line 65
    new-instance v0, Lus/zoom/androidlib/util/SnackbarUtils;

    new-instance v1, Ljava/lang/ref/WeakReference;

    const/4 v2, 0x0

    invoke-static {p0, p1, v2}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Lus/zoom/androidlib/util/SnackbarUtils;-><init>(Ljava/lang/ref/WeakReference;)V

    const p0, -0xcdcdce

    invoke-virtual {v0, p0}, Lus/zoom/androidlib/util/SnackbarUtils;->backColor(I)Lus/zoom/androidlib/util/SnackbarUtils;

    move-result-object p0

    return-object p0
.end method

.method public static Short(Landroid/view/View;Ljava/lang/String;)Lus/zoom/androidlib/util/SnackbarUtils;
    .locals 3

    .line 56
    new-instance v0, Lus/zoom/androidlib/util/SnackbarUtils;

    new-instance v1, Ljava/lang/ref/WeakReference;

    const/4 v2, -0x1

    invoke-static {p0, p1, v2}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Lus/zoom/androidlib/util/SnackbarUtils;-><init>(Ljava/lang/ref/WeakReference;)V

    const p0, -0xcdcdce

    invoke-virtual {v0, p0}, Lus/zoom/androidlib/util/SnackbarUtils;->backColor(I)Lus/zoom/androidlib/util/SnackbarUtils;

    move-result-object p0

    return-object p0
.end method

.method public static custom(Landroid/view/View;Ljava/lang/String;I)Lus/zoom/androidlib/util/SnackbarUtils;
    .locals 2

    .line 75
    new-instance v0, Lus/zoom/androidlib/util/SnackbarUtils;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-static {p0, p1, p2}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Lus/zoom/androidlib/util/SnackbarUtils;-><init>(Ljava/lang/ref/WeakReference;)V

    const p0, -0xcdcdce

    invoke-virtual {v0, p0}, Lus/zoom/androidlib/util/SnackbarUtils;->backColor(I)Lus/zoom/androidlib/util/SnackbarUtils;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public actionColor(I)Lus/zoom/androidlib/util/SnackbarUtils;
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 206
    invoke-virtual {p0}, Lus/zoom/androidlib/util/SnackbarUtils;->getSnackbar()Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 207
    invoke-virtual {p0}, Lus/zoom/androidlib/util/SnackbarUtils;->getSnackbar()Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lus/zoom/androidlib/R$id;->snackbar_action:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(I)V

    :cond_0
    return-object p0
.end method

.method public backColor(I)Lus/zoom/androidlib/util/SnackbarUtils;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 120
    invoke-virtual {p0}, Lus/zoom/androidlib/util/SnackbarUtils;->getSnackbar()Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {p0}, Lus/zoom/androidlib/util/SnackbarUtils;->getSnackbar()Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    return-object p0
.end method

.method public confirm()Lus/zoom/androidlib/util/SnackbarUtils;
    .locals 2

    .line 91
    invoke-virtual {p0}, Lus/zoom/androidlib/util/SnackbarUtils;->getSnackbar()Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {p0}, Lus/zoom/androidlib/util/SnackbarUtils;->getSnackbar()Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->getView()Landroid/view/View;

    move-result-object v0

    const v1, -0xf18e15

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    return-object p0
.end method

.method public duration(I)Lus/zoom/androidlib/util/SnackbarUtils;
    .locals 1

    .line 254
    invoke-virtual {p0}, Lus/zoom/androidlib/util/SnackbarUtils;->getSnackbar()Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 255
    invoke-virtual {p0}, Lus/zoom/androidlib/util/SnackbarUtils;->getSnackbar()Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/snackbar/Snackbar;->setDuration(I)Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    :cond_0
    return-object p0
.end method

.method public error()Lus/zoom/androidlib/util/SnackbarUtils;
    .locals 2

    .line 109
    invoke-virtual {p0}, Lus/zoom/androidlib/util/SnackbarUtils;->getSnackbar()Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {p0}, Lus/zoom/androidlib/util/SnackbarUtils;->getSnackbar()Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->getView()Landroid/view/View;

    move-result-object v0

    const v1, -0x4ddbdc

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    return-object p0
.end method

.method public getSnackbar()Lcom/google/android/material/snackbar/Snackbar;
    .locals 1

    .line 42
    sget-object v0, Lus/zoom/androidlib/util/SnackbarUtils;->snackbarWeakReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 43
    sget-object v0, Lus/zoom/androidlib/util/SnackbarUtils;->snackbarWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/snackbar/Snackbar;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public gravity(I)Lus/zoom/androidlib/util/SnackbarUtils;
    .locals 3

    .line 158
    invoke-virtual {p0}, Lus/zoom/androidlib/util/SnackbarUtils;->getSnackbar()Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 159
    invoke-virtual {p0}, Lus/zoom/androidlib/util/SnackbarUtils;->getSnackbar()Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    .line 160
    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 161
    instance-of v2, v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    if-eqz v2, :cond_0

    .line 162
    move-object v2, v1

    check-cast v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    iput p1, v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->gravity:I

    goto :goto_0

    .line 164
    :cond_0
    move-object v2, v1

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    iput p1, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 166
    :goto_0
    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-object p0
.end method

.method public info()Lus/zoom/androidlib/util/SnackbarUtils;
    .locals 2

    .line 82
    invoke-virtual {p0}, Lus/zoom/androidlib/util/SnackbarUtils;->getSnackbar()Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {p0}, Lus/zoom/androidlib/util/SnackbarUtils;->getSnackbar()Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->getView()Landroid/view/View;

    move-result-object v0

    const v1, -0xf18e15

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    return-object p0
.end method

.method public margins(I)Lus/zoom/androidlib/util/SnackbarUtils;
    .locals 1

    .line 177
    invoke-virtual {p0}, Lus/zoom/androidlib/util/SnackbarUtils;->getSnackbar()Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {p0, p1, p1, p1, p1}, Lus/zoom/androidlib/util/SnackbarUtils;->margins(IIII)Lus/zoom/androidlib/util/SnackbarUtils;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p0
.end method

.method public margins(IIII)Lus/zoom/androidlib/util/SnackbarUtils;
    .locals 2

    .line 193
    invoke-virtual {p0}, Lus/zoom/androidlib/util/SnackbarUtils;->getSnackbar()Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {p0}, Lus/zoom/androidlib/util/SnackbarUtils;->getSnackbar()Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 195
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 196
    invoke-virtual {p0}, Lus/zoom/androidlib/util/SnackbarUtils;->getSnackbar()Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-object p0
.end method

.method public messageCenter()Lus/zoom/androidlib/util/SnackbarUtils;
    .locals 3

    .line 142
    invoke-virtual {p0}, Lus/zoom/androidlib/util/SnackbarUtils;->getSnackbar()Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 143
    invoke-virtual {p0}, Lus/zoom/androidlib/util/SnackbarUtils;->getSnackbar()Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lus/zoom/androidlib/R$id;->snackbar_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 144
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    .line 145
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 147
    :cond_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    :cond_1
    return-object p0
.end method

.method public messageColor(I)Lus/zoom/androidlib/util/SnackbarUtils;
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 131
    invoke-virtual {p0}, Lus/zoom/androidlib/util/SnackbarUtils;->getSnackbar()Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {p0}, Lus/zoom/androidlib/util/SnackbarUtils;->getSnackbar()Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lus/zoom/androidlib/R$id;->snackbar_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-object p0
.end method

.method public setAction(ILandroid/view/View$OnClickListener;)Lus/zoom/androidlib/util/SnackbarUtils;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 221
    invoke-virtual {p0}, Lus/zoom/androidlib/util/SnackbarUtils;->getSnackbar()Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 222
    invoke-virtual {p0}, Lus/zoom/androidlib/util/SnackbarUtils;->getSnackbar()Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lus/zoom/androidlib/util/SnackbarUtils;->setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lus/zoom/androidlib/util/SnackbarUtils;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p0
.end method

.method public setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lus/zoom/androidlib/util/SnackbarUtils;
    .locals 1

    .line 235
    invoke-virtual {p0}, Lus/zoom/androidlib/util/SnackbarUtils;->getSnackbar()Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 236
    invoke-virtual {p0}, Lus/zoom/androidlib/util/SnackbarUtils;->getSnackbar()Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/material/snackbar/Snackbar;->setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/google/android/material/snackbar/Snackbar;

    :cond_0
    return-object p0
.end method

.method public setCallback(Lcom/google/android/material/snackbar/Snackbar$Callback;)Lus/zoom/androidlib/util/SnackbarUtils;
    .locals 1

    .line 247
    invoke-virtual {p0}, Lus/zoom/androidlib/util/SnackbarUtils;->getSnackbar()Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 248
    invoke-virtual {p0}, Lus/zoom/androidlib/util/SnackbarUtils;->getSnackbar()Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/snackbar/Snackbar;->setCallback(Lcom/google/android/material/snackbar/Snackbar$Callback;)Lcom/google/android/material/snackbar/Snackbar;

    :cond_0
    return-object p0
.end method

.method public show()V
    .locals 1

    .line 264
    invoke-virtual {p0}, Lus/zoom/androidlib/util/SnackbarUtils;->getSnackbar()Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 265
    invoke-virtual {p0}, Lus/zoom/androidlib/util/SnackbarUtils;->getSnackbar()Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    :cond_0
    return-void
.end method

.method public warning()Lus/zoom/androidlib/util/SnackbarUtils;
    .locals 2

    .line 100
    invoke-virtual {p0}, Lus/zoom/androidlib/util/SnackbarUtils;->getSnackbar()Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {p0}, Lus/zoom/androidlib/util/SnackbarUtils;->getSnackbar()Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->getView()Landroid/view/View;

    move-result-object v0

    const v1, -0x8bd2

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    return-object p0
.end method
