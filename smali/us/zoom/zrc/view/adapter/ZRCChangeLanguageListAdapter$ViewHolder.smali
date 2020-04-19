.class public Lus/zoom/zrc/view/adapter/ZRCChangeLanguageListAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ZRCChangeLanguageListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/view/adapter/ZRCChangeLanguageListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field languageItem:Landroid/widget/TextView;

.field mark:Landroid/widget/ImageView;

.field final synthetic this$0:Lus/zoom/zrc/view/adapter/ZRCChangeLanguageListAdapter;


# direct methods
.method public constructor <init>(Lus/zoom/zrc/view/adapter/ZRCChangeLanguageListAdapter;Landroid/view/View;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lus/zoom/zrc/view/adapter/ZRCChangeLanguageListAdapter$ViewHolder;->this$0:Lus/zoom/zrc/view/adapter/ZRCChangeLanguageListAdapter;

    .line 72
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 73
    sget p1, Lus/zoom/zrcbox/R$id;->language_list_item:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lus/zoom/zrc/view/adapter/ZRCChangeLanguageListAdapter$ViewHolder;->languageItem:Landroid/widget/TextView;

    .line 74
    sget p1, Lus/zoom/zrcbox/R$id;->current_language_check_mark:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lus/zoom/zrc/view/adapter/ZRCChangeLanguageListAdapter$ViewHolder;->mark:Landroid/widget/ImageView;

    return-void
.end method
