.class public Lus/zoom/androidlib/widget/ZMPopupMenu;
.super Ljava/lang/Object;
.source "ZMPopupMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/androidlib/widget/ZMPopupMenu$OnMenuItemClickListener;,
        Lus/zoom/androidlib/widget/ZMPopupMenu$OnDismissListener;
    }
.end annotation


# instance fields
.field private isOutSideDark:Z

.field private mActivity:Landroid/app/Activity;

.field private mAnchor:Landroid/view/View;

.field private mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mDismissListener:Lus/zoom/androidlib/widget/ZMPopupMenu$OnDismissListener;

.field private mMenuAdapter:Lus/zoom/androidlib/widget/ZMMenuAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lus/zoom/androidlib/widget/ZMMenuAdapter<",
            "*>;"
        }
    .end annotation
.end field

.field protected mMenuItemClickListener:Lus/zoom/androidlib/widget/ZMPopupMenu$OnMenuItemClickListener;

.field private mMenuListView:Lus/zoom/androidlib/widget/ZMMenuListView;

.field private mPopup:Lus/zoom/androidlib/widget/ZMPopupWindow;

.field private outSideAlpha:F


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;ILus/zoom/androidlib/widget/ZMMenuAdapter;Landroid/view/View;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/content/Context;",
            "I",
            "Lus/zoom/androidlib/widget/ZMMenuAdapter<",
            "*>;",
            "Landroid/view/View;",
            "II)V"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3ec28f5c    # 0.38f

    .line 33
    iput v0, p0, Lus/zoom/androidlib/widget/ZMPopupMenu;->outSideAlpha:F

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lus/zoom/androidlib/widget/ZMPopupMenu;->isOutSideDark:Z

    .line 49
    iput-object p1, p0, Lus/zoom/androidlib/widget/ZMPopupMenu;->mActivity:Landroid/app/Activity;

    .line 50
    iput-object p2, p0, Lus/zoom/androidlib/widget/ZMPopupMenu;->mContext:Landroid/content/Context;

    .line 51
    iput-object p5, p0, Lus/zoom/androidlib/widget/ZMPopupMenu;->mAnchor:Landroid/view/View;

    .line 52
    iput-object p4, p0, Lus/zoom/androidlib/widget/ZMPopupMenu;->mMenuAdapter:Lus/zoom/androidlib/widget/ZMMenuAdapter;

    .line 54
    iget-object p1, p0, Lus/zoom/androidlib/widget/ZMPopupMenu;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 p2, 0x0

    .line 55
    invoke-virtual {p1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/androidlib/widget/ZMPopupMenu;->mContentView:Landroid/view/View;

    .line 56
    iget-object p1, p0, Lus/zoom/androidlib/widget/ZMPopupMenu;->mContentView:Landroid/view/View;

    sget p2, Lus/zoom/androidlib/R$id;->menuListView:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lus/zoom/androidlib/widget/ZMMenuListView;

    iput-object p1, p0, Lus/zoom/androidlib/widget/ZMPopupMenu;->mMenuListView:Lus/zoom/androidlib/widget/ZMMenuListView;

    .line 58
    iget-object p1, p0, Lus/zoom/androidlib/widget/ZMPopupMenu;->mMenuAdapter:Lus/zoom/androidlib/widget/ZMMenuAdapter;

    if-eqz p1, :cond_0

    .line 59
    iget-object p2, p0, Lus/zoom/androidlib/widget/ZMPopupMenu;->mMenuListView:Lus/zoom/androidlib/widget/ZMMenuListView;

    invoke-virtual {p2, p1}, Lus/zoom/androidlib/widget/ZMMenuListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 62
    :cond_0
    iget-object p1, p0, Lus/zoom/androidlib/widget/ZMPopupMenu;->mMenuListView:Lus/zoom/androidlib/widget/ZMMenuListView;

    new-instance p2, Lus/zoom/androidlib/widget/ZMPopupMenu$1;

    invoke-direct {p2, p0}, Lus/zoom/androidlib/widget/ZMPopupMenu$1;-><init>(Lus/zoom/androidlib/widget/ZMPopupMenu;)V

    invoke-virtual {p1, p2}, Lus/zoom/androidlib/widget/ZMMenuListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 75
    new-instance p1, Lus/zoom/androidlib/widget/ZMPopupWindow;

    iget-object p2, p0, Lus/zoom/androidlib/widget/ZMPopupMenu;->mContentView:Landroid/view/View;

    invoke-direct {p1, p2, p6, p7, v0}, Lus/zoom/androidlib/widget/ZMPopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object p1, p0, Lus/zoom/androidlib/widget/ZMPopupMenu;->mPopup:Lus/zoom/androidlib/widget/ZMPopupWindow;

    .line 76
    iget-object p1, p0, Lus/zoom/androidlib/widget/ZMPopupMenu;->mPopup:Lus/zoom/androidlib/widget/ZMPopupWindow;

    new-instance p2, Lus/zoom/androidlib/widget/ZMPopupMenu$2;

    invoke-direct {p2, p0}, Lus/zoom/androidlib/widget/ZMPopupMenu$2;-><init>(Lus/zoom/androidlib/widget/ZMPopupMenu;)V

    invoke-virtual {p1, p2}, Lus/zoom/androidlib/widget/ZMPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;Lus/zoom/androidlib/widget/ZMMenuAdapter;Landroid/view/View;II)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/content/Context;",
            "Lus/zoom/androidlib/widget/ZMMenuAdapter<",
            "*>;",
            "Landroid/view/View;",
            "II)V"
        }
    .end annotation

    .line 89
    sget v3, Lus/zoom/androidlib/R$layout;->zm_popup_menu:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lus/zoom/androidlib/widget/ZMPopupMenu;-><init>(Landroid/app/Activity;Landroid/content/Context;ILus/zoom/androidlib/widget/ZMMenuAdapter;Landroid/view/View;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lus/zoom/androidlib/widget/ZMMenuAdapter;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lus/zoom/androidlib/widget/ZMMenuAdapter<",
            "*>;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const/4 v0, -0x2

    .line 106
    invoke-direct {p0, p1, p2, p3, v0}, Lus/zoom/androidlib/widget/ZMPopupMenu;-><init>(Landroid/content/Context;Lus/zoom/androidlib/widget/ZMMenuAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lus/zoom/androidlib/widget/ZMMenuAdapter;Landroid/view/View;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lus/zoom/androidlib/widget/ZMMenuAdapter<",
            "*>;",
            "Landroid/view/View;",
            "I)V"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v6, -0x2

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    .line 94
    invoke-direct/range {v0 .. v6}, Lus/zoom/androidlib/widget/ZMPopupMenu;-><init>(Landroid/app/Activity;Landroid/content/Context;Lus/zoom/androidlib/widget/ZMMenuAdapter;Landroid/view/View;II)V

    return-void
.end method

.method static synthetic access$000(Lus/zoom/androidlib/widget/ZMPopupMenu;)Lus/zoom/androidlib/widget/ZMMenuAdapter;
    .locals 0

    .line 20
    iget-object p0, p0, Lus/zoom/androidlib/widget/ZMPopupMenu;->mMenuAdapter:Lus/zoom/androidlib/widget/ZMMenuAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lus/zoom/androidlib/widget/ZMPopupMenu;)Landroid/app/Activity;
    .locals 0

    .line 20
    iget-object p0, p0, Lus/zoom/androidlib/widget/ZMPopupMenu;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$200(Lus/zoom/androidlib/widget/ZMPopupMenu;Landroid/app/Activity;F)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Lus/zoom/androidlib/widget/ZMPopupMenu;->setWindowBgAlpha(Landroid/app/Activity;F)V

    return-void
.end method

.method static synthetic access$300(Lus/zoom/androidlib/widget/ZMPopupMenu;)Lus/zoom/androidlib/widget/ZMPopupMenu$OnDismissListener;
    .locals 0

    .line 20
    iget-object p0, p0, Lus/zoom/androidlib/widget/ZMPopupMenu;->mDismissListener:Lus/zoom/androidlib/widget/ZMPopupMenu$OnDismissListener;

    return-object p0
.end method

.method private static getWidestView(Landroid/content/Context;Landroid/widget/Adapter;)I
    .locals 6

    .line 112
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 113
    invoke-interface {p1}, Landroid/widget/Adapter;->getCount()I

    move-result p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v4, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, p0, :cond_1

    .line 114
    invoke-interface {p1, v2, v4, v0}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 115
    invoke-virtual {v4, v1, v1}, Landroid/view/View;->measure(II)V

    .line 116
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    if-le v5, v3, :cond_0

    move v3, v5

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method private setWindowBgAlpha(Landroid/app/Activity;F)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 127
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 128
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 129
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 175
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMPopupMenu;->mPopup:Lus/zoom/androidlib/widget/ZMPopupWindow;

    invoke-virtual {v0}, Lus/zoom/androidlib/widget/ZMPopupWindow;->dismiss()V

    return-void
.end method

.method protected onMenuItemClick(Lus/zoom/androidlib/widget/IZMMenuItem;)V
    .locals 1

    .line 197
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMPopupMenu;->mMenuItemClickListener:Lus/zoom/androidlib/widget/ZMPopupMenu$OnMenuItemClickListener;

    if-eqz v0, :cond_0

    .line 198
    invoke-interface {v0, p1}, Lus/zoom/androidlib/widget/ZMPopupMenu$OnMenuItemClickListener;->onMenuItemClick(Lus/zoom/androidlib/widget/IZMMenuItem;)V

    .line 200
    :cond_0
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMPopupMenu;->dismiss()V

    return-void
.end method

.method public setBackgroudColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 159
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMPopupMenu;->mMenuListView:Lus/zoom/androidlib/widget/ZMMenuListView;

    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {v0, p1}, Lus/zoom/androidlib/widget/ZMMenuListView;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method public setBackgroudResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 165
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMPopupMenu;->mMenuListView:Lus/zoom/androidlib/widget/ZMMenuListView;

    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {v0, p1}, Lus/zoom/androidlib/widget/ZMMenuListView;->setBackgroundResource(I)V

    :cond_0
    return-void
.end method

.method public setOnDismissListener(Lus/zoom/androidlib/widget/ZMPopupMenu$OnDismissListener;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lus/zoom/androidlib/widget/ZMPopupMenu;->mDismissListener:Lus/zoom/androidlib/widget/ZMPopupMenu$OnDismissListener;

    return-void
.end method

.method public setOnMenuItemClickListener(Lus/zoom/androidlib/widget/ZMPopupMenu$OnMenuItemClickListener;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lus/zoom/androidlib/widget/ZMPopupMenu;->mMenuItemClickListener:Lus/zoom/androidlib/widget/ZMPopupMenu$OnMenuItemClickListener;

    return-void
.end method

.method public setOutSideAlpha(F)V
    .locals 0

    .line 133
    iput p1, p0, Lus/zoom/androidlib/widget/ZMPopupMenu;->outSideAlpha:F

    return-void
.end method

.method public setOutSideDark(Z)V
    .locals 0

    .line 137
    iput-boolean p1, p0, Lus/zoom/androidlib/widget/ZMPopupMenu;->isOutSideDark:Z

    return-void
.end method

.method public show()V
    .locals 2

    .line 145
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMPopupMenu;->mPopup:Lus/zoom/androidlib/widget/ZMPopupWindow;

    iget-object v1, p0, Lus/zoom/androidlib/widget/ZMPopupMenu;->mAnchor:Landroid/view/View;

    invoke-virtual {v0, v1}, Lus/zoom/androidlib/widget/ZMPopupWindow;->showAsDropDown(Landroid/view/View;)V

    .line 146
    iget-boolean v0, p0, Lus/zoom/androidlib/widget/ZMPopupMenu;->isOutSideDark:Z

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMPopupMenu;->mActivity:Landroid/app/Activity;

    iget v1, p0, Lus/zoom/androidlib/widget/ZMPopupMenu;->outSideAlpha:F

    invoke-direct {p0, v0, v1}, Lus/zoom/androidlib/widget/ZMPopupMenu;->setWindowBgAlpha(Landroid/app/Activity;F)V

    :cond_0
    return-void
.end method

.method public show(III)V
    .locals 2

    .line 152
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMPopupMenu;->mPopup:Lus/zoom/androidlib/widget/ZMPopupWindow;

    iget-object v1, p0, Lus/zoom/androidlib/widget/ZMPopupMenu;->mAnchor:Landroid/view/View;

    invoke-virtual {v0, v1, p1, p2, p3}, Lus/zoom/androidlib/widget/ZMPopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 153
    iget-boolean p1, p0, Lus/zoom/androidlib/widget/ZMPopupMenu;->isOutSideDark:Z

    if-eqz p1, :cond_0

    .line 154
    iget-object p1, p0, Lus/zoom/androidlib/widget/ZMPopupMenu;->mActivity:Landroid/app/Activity;

    iget p2, p0, Lus/zoom/androidlib/widget/ZMPopupMenu;->outSideAlpha:F

    invoke-direct {p0, p1, p2}, Lus/zoom/androidlib/widget/ZMPopupMenu;->setWindowBgAlpha(Landroid/app/Activity;F)V

    :cond_0
    return-void
.end method
