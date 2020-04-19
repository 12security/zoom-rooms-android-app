.class public Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment$ZRCChangeContentPhoneScreenPageAdapter;
.super Landroidx/fragment/app/FragmentPagerAdapter;
.source "ZRCChangeContentPhoneDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ZRCChangeContentPhoneScreenPageAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;Landroidx/fragment/app/FragmentManager;)V
    .locals 2

    .line 389
    iput-object p1, p0, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment$ZRCChangeContentPhoneScreenPageAdapter;->this$0:Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;

    .line 390
    invoke-direct {p0, p2}, Landroidx/fragment/app/FragmentPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    const/4 p2, 0x0

    :goto_0
    const/4 v0, 0x4

    if-ge p2, v0, :cond_0

    .line 392
    invoke-static {p2}, Lus/zoom/zrc/phoneview/ZRCChangeContentScreenPageFragment;->newInstance(I)Lus/zoom/zrc/phoneview/ZRCChangeContentScreenPageFragment;

    move-result-object v0

    .line 393
    invoke-static {p1}, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;->access$800(Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 404
    iget-object v0, p0, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment$ZRCChangeContentPhoneScreenPageAdapter;->this$0:Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;

    invoke-static {v0}, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;->access$900(Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Landroidx/fragment/app/Fragment;
    .locals 0

    .line 387
    invoke-virtual {p0, p1}, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment$ZRCChangeContentPhoneScreenPageAdapter;->getItem(I)Lus/zoom/zrc/phoneview/ZRCChangeContentScreenPageFragment;

    move-result-object p1

    return-object p1
.end method

.method public getItem(I)Lus/zoom/zrc/phoneview/ZRCChangeContentScreenPageFragment;
    .locals 1

    .line 399
    iget-object v0, p0, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment$ZRCChangeContentPhoneScreenPageAdapter;->this$0:Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;

    invoke-static {v0}, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;->access$800(Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lus/zoom/zrc/phoneview/ZRCChangeContentScreenPageFragment;

    return-object p1
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 409
    check-cast p1, Lus/zoom/zrc/phoneview/ZRCChangeContentScreenPageFragment;

    .line 410
    invoke-virtual {p1}, Lus/zoom/zrc/phoneview/ZRCChangeContentScreenPageFragment;->getIndex()I

    move-result p1

    invoke-virtual {p0}, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment$ZRCChangeContentPhoneScreenPageAdapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    const/4 p1, -0x2

    return p1
.end method
