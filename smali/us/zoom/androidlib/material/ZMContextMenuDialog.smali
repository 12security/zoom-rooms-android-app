.class public Lus/zoom/androidlib/material/ZMContextMenuDialog;
.super Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;
.source "ZMContextMenuDialog.java"

# interfaces
.implements Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/BaseRecyclerViewAdapter$OnRecyclerViewListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/androidlib/material/ZMContextMenuDialog$Builder;,
        Lus/zoom/androidlib/material/ZMContextMenuDialog$OnContextMenuClickListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ZMContextMenuDialog"


# instance fields
.field private adapter:Lus/zoom/androidlib/material/ZMContextMenuListAdapter;

.field private context:Landroid/content/Context;

.field private hasItemDecoration:Z

.field private listener:Lus/zoom/androidlib/material/ZMContextMenuDialog$OnContextMenuClickListener;

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$400(Lus/zoom/androidlib/material/ZMContextMenuDialog$Builder;)Lus/zoom/androidlib/material/ZMContextMenuDialog;
    .locals 0

    .line 27
    invoke-static {p0}, Lus/zoom/androidlib/material/ZMContextMenuDialog;->newInstance(Lus/zoom/androidlib/material/ZMContextMenuDialog$Builder;)Lus/zoom/androidlib/material/ZMContextMenuDialog;

    move-result-object p0

    return-object p0
.end method

.method public static builder(Landroid/content/Context;)Lus/zoom/androidlib/material/ZMContextMenuDialog$Builder;
    .locals 1

    .line 119
    new-instance v0, Lus/zoom/androidlib/material/ZMContextMenuDialog$Builder;

    invoke-direct {v0, p0}, Lus/zoom/androidlib/material/ZMContextMenuDialog$Builder;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private static newInstance(Lus/zoom/androidlib/material/ZMContextMenuDialog$Builder;)Lus/zoom/androidlib/material/ZMContextMenuDialog;
    .locals 2

    .line 46
    new-instance v0, Lus/zoom/androidlib/material/ZMContextMenuDialog;

    invoke-direct {v0}, Lus/zoom/androidlib/material/ZMContextMenuDialog;-><init>()V

    .line 47
    invoke-static {p0}, Lus/zoom/androidlib/material/ZMContextMenuDialog$Builder;->access$000(Lus/zoom/androidlib/material/ZMContextMenuDialog$Builder;)Z

    move-result v1

    invoke-direct {v0, v1}, Lus/zoom/androidlib/material/ZMContextMenuDialog;->setHasItemDecoration(Z)V

    .line 48
    invoke-static {p0}, Lus/zoom/androidlib/material/ZMContextMenuDialog$Builder;->access$100(Lus/zoom/androidlib/material/ZMContextMenuDialog$Builder;)Lus/zoom/androidlib/material/ZMContextMenuListAdapter;

    move-result-object v1

    invoke-direct {v0, v1}, Lus/zoom/androidlib/material/ZMContextMenuDialog;->setAdapter(Lus/zoom/androidlib/material/ZMContextMenuListAdapter;)V

    .line 49
    invoke-static {p0}, Lus/zoom/androidlib/material/ZMContextMenuDialog$Builder;->access$200(Lus/zoom/androidlib/material/ZMContextMenuDialog$Builder;)Lus/zoom/androidlib/material/ZMContextMenuDialog$OnContextMenuClickListener;

    move-result-object v1

    invoke-direct {v0, v1}, Lus/zoom/androidlib/material/ZMContextMenuDialog;->setListener(Lus/zoom/androidlib/material/ZMContextMenuDialog$OnContextMenuClickListener;)V

    .line 50
    invoke-static {p0}, Lus/zoom/androidlib/material/ZMContextMenuDialog$Builder;->access$300(Lus/zoom/androidlib/material/ZMContextMenuDialog$Builder;)Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lus/zoom/androidlib/material/ZMContextMenuDialog;->setContext(Landroid/content/Context;)V

    return-object v0
.end method

.method private setAdapter(Lus/zoom/androidlib/material/ZMContextMenuListAdapter;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lus/zoom/androidlib/material/ZMContextMenuDialog;->adapter:Lus/zoom/androidlib/material/ZMContextMenuListAdapter;

    return-void
.end method

.method private setContext(Landroid/content/Context;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lus/zoom/androidlib/material/ZMContextMenuDialog;->context:Landroid/content/Context;

    return-void
.end method

.method private setHasItemDecoration(Z)V
    .locals 0

    .line 115
    iput-boolean p1, p0, Lus/zoom/androidlib/material/ZMContextMenuDialog;->hasItemDecoration:Z

    return-void
.end method

.method private setListener(Lus/zoom/androidlib/material/ZMContextMenuDialog$OnContextMenuClickListener;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lus/zoom/androidlib/material/ZMContextMenuDialog;->listener:Lus/zoom/androidlib/material/ZMContextMenuDialog$OnContextMenuClickListener;

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 56
    new-instance p1, Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    iget-object v0, p0, Lus/zoom/androidlib/material/ZMContextMenuDialog;->context:Landroid/content/Context;

    sget v1, Lus/zoom/androidlib/R$style;->SheetDialog:I

    invoke-direct {p1, v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;-><init>(Landroid/content/Context;I)V

    .line 57
    new-instance v0, Lus/zoom/androidlib/material/ZMContextMenuDialog$1;

    invoke-direct {v0, p0}, Lus/zoom/androidlib/material/ZMContextMenuDialog$1;-><init>(Lus/zoom/androidlib/material/ZMContextMenuDialog;)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 75
    sget p3, Lus/zoom/androidlib/R$layout;->zm_context_menu_dialog:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onItemClick(Landroid/view/View;I)V
    .locals 1

    .line 124
    iget-object v0, p0, Lus/zoom/androidlib/material/ZMContextMenuDialog;->listener:Lus/zoom/androidlib/material/ZMContextMenuDialog$OnContextMenuClickListener;

    if-eqz v0, :cond_0

    .line 125
    invoke-interface {v0, p1, p2}, Lus/zoom/androidlib/material/ZMContextMenuDialog$OnContextMenuClickListener;->onContextMenuClick(Landroid/view/View;I)V

    .line 128
    :cond_0
    invoke-virtual {p0}, Lus/zoom/androidlib/material/ZMContextMenuDialog;->dismiss()V

    return-void
.end method

.method public onItemLongClick(Landroid/view/View;I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 80
    invoke-super {p0, p1, p2}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 81
    iget-object p2, p0, Lus/zoom/androidlib/material/ZMContextMenuDialog;->adapter:Lus/zoom/androidlib/material/ZMContextMenuListAdapter;

    invoke-virtual {p2, p0}, Lus/zoom/androidlib/material/ZMContextMenuListAdapter;->setOnRecyclerViewListener(Lus/zoom/androidlib/widget/pinnedsectionrecyclerview/BaseRecyclerViewAdapter$OnRecyclerViewListener;)V

    .line 82
    sget p2, Lus/zoom/androidlib/R$id;->menu_list:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lus/zoom/androidlib/material/ZMContextMenuDialog;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 83
    iget-object p1, p0, Lus/zoom/androidlib/material/ZMContextMenuDialog;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lus/zoom/androidlib/material/ZMContextMenuDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 84
    iget-object p1, p0, Lus/zoom/androidlib/material/ZMContextMenuDialog;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lus/zoom/androidlib/material/ZMContextMenuDialog;->adapter:Lus/zoom/androidlib/material/ZMContextMenuListAdapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 85
    iget-boolean p1, p0, Lus/zoom/androidlib/material/ZMContextMenuDialog;->hasItemDecoration:Z

    if-eqz p1, :cond_0

    .line 86
    new-instance p1, Landroidx/recyclerview/widget/DividerItemDecoration;

    iget-object p2, p0, Lus/zoom/androidlib/material/ZMContextMenuDialog;->context:Landroid/content/Context;

    const/4 v0, 0x1

    invoke-direct {p1, p2, v0}, Landroidx/recyclerview/widget/DividerItemDecoration;-><init>(Landroid/content/Context;I)V

    .line 87
    invoke-virtual {p0}, Lus/zoom/androidlib/material/ZMContextMenuDialog;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lus/zoom/androidlib/R$drawable;->zm_divider_line_decoration:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/DividerItemDecoration;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 88
    iget-object p2, p0, Lus/zoom/androidlib/material/ZMContextMenuDialog;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    :cond_0
    return-void
.end method

.method public setOnContextMenuClickListener(Lus/zoom/androidlib/material/ZMContextMenuDialog$OnContextMenuClickListener;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lus/zoom/androidlib/material/ZMContextMenuDialog;->listener:Lus/zoom/androidlib/material/ZMContextMenuDialog$OnContextMenuClickListener;

    return-void
.end method

.method public show(Landroidx/fragment/app/FragmentManager;)V
    .locals 2

    .line 93
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 94
    sget-object v1, Lus/zoom/androidlib/material/ZMContextMenuDialog;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 96
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    :cond_0
    const/4 p1, 0x0

    .line 98
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 99
    sget-object p1, Lus/zoom/androidlib/material/ZMContextMenuDialog;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lus/zoom/androidlib/material/ZMContextMenuDialog;->show(Landroidx/fragment/app/FragmentTransaction;Ljava/lang/String;)I

    return-void
.end method
