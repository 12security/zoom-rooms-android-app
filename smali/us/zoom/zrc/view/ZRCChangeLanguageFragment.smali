.class public Lus/zoom/zrc/view/ZRCChangeLanguageFragment;
.super Lus/zoom/zrc/base/app/ZRCDialogFragment;
.source "ZRCChangeLanguageFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;-><init>()V

    return-void
.end method

.method public static show(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;)V
    .locals 2
    .param p0    # Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 24
    const-class v0, Lus/zoom/zrc/view/ZRCChangeLanguageFragment;

    invoke-virtual {p0, v0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->getFragment(Ljava/lang/Class;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lus/zoom/zrc/base/app/ZRCDialogFragment;

    if-eqz v0, :cond_0

    .line 25
    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    if-nez v0, :cond_1

    .line 30
    new-instance v0, Lus/zoom/zrc/view/ZRCChangeLanguageFragment;

    invoke-direct {v0}, Lus/zoom/zrc/view/ZRCChangeLanguageFragment;-><init>()V

    .line 32
    :cond_1
    invoke-virtual {p0, v0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->showDialogFragment(Landroidx/fragment/app/DialogFragment;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 37
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 38
    invoke-virtual {p0, p1, v0}, Lus/zoom/zrc/view/ZRCChangeLanguageFragment;->setStyle(II)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
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

    .line 44
    sget p3, Lus/zoom/zrcbox/R$layout;->change_language_frag:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 45
    sget p2, Lus/zoom/zrcbox/R$id;->btn_change_lan_dismiss:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 46
    sget p3, Lus/zoom/zrcbox/R$id;->language_list:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroidx/recyclerview/widget/RecyclerView;

    .line 47
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCChangeLanguageFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 48
    invoke-virtual {p3, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 49
    new-instance v1, Lus/zoom/zrc/view/RecyclerViewDivider;

    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCChangeLanguageFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    sget v3, Lus/zoom/zrcbox/R$drawable;->zrc_setting_divider_language_list:I

    invoke-direct {v1, v2, v0, v3}, Lus/zoom/zrc/view/RecyclerViewDivider;-><init>(Landroid/content/Context;II)V

    invoke-virtual {p3, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 51
    new-instance v0, Lus/zoom/zrc/view/adapter/ZRCChangeLanguageListAdapter;

    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCChangeLanguageFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lus/zoom/zrc/view/adapter/ZRCChangeLanguageListAdapter;-><init>(Landroid/content/Context;)V

    .line 52
    invoke-virtual {p3, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 54
    new-instance p3, Lus/zoom/zrc/view/ZRCChangeLanguageFragment$1;

    invoke-direct {p3, p0}, Lus/zoom/zrc/view/ZRCChangeLanguageFragment$1;-><init>(Lus/zoom/zrc/view/ZRCChangeLanguageFragment;)V

    invoke-virtual {v0, p3}, Lus/zoom/zrc/view/adapter/ZRCChangeLanguageListAdapter;->setOnClickListener(Lus/zoom/zrc/view/adapter/ZRCChangeLanguageListAdapter$OnItemClickListener;)V

    .line 62
    new-instance p3, Lus/zoom/zrc/view/ZRCChangeLanguageFragment$2;

    invoke-direct {p3, p0}, Lus/zoom/zrc/view/ZRCChangeLanguageFragment$2;-><init>(Lus/zoom/zrc/view/ZRCChangeLanguageFragment;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method
