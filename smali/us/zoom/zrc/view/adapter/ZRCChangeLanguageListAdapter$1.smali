.class Lus/zoom/zrc/view/adapter/ZRCChangeLanguageListAdapter$1;
.super Ljava/lang/Object;
.source "ZRCChangeLanguageListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/view/adapter/ZRCChangeLanguageListAdapter;->onBindViewHolder(Lus/zoom/zrc/view/adapter/ZRCChangeLanguageListAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/view/adapter/ZRCChangeLanguageListAdapter;

.field final synthetic val$holder:Lus/zoom/zrc/view/adapter/ZRCChangeLanguageListAdapter$ViewHolder;

.field final synthetic val$locale:Ljava/util/Locale;


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/adapter/ZRCChangeLanguageListAdapter;Lus/zoom/zrc/view/adapter/ZRCChangeLanguageListAdapter$ViewHolder;Ljava/util/Locale;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lus/zoom/zrc/view/adapter/ZRCChangeLanguageListAdapter$1;->this$0:Lus/zoom/zrc/view/adapter/ZRCChangeLanguageListAdapter;

    iput-object p2, p0, Lus/zoom/zrc/view/adapter/ZRCChangeLanguageListAdapter$1;->val$holder:Lus/zoom/zrc/view/adapter/ZRCChangeLanguageListAdapter$ViewHolder;

    iput-object p3, p0, Lus/zoom/zrc/view/adapter/ZRCChangeLanguageListAdapter$1;->val$locale:Ljava/util/Locale;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 55
    iget-object p1, p0, Lus/zoom/zrc/view/adapter/ZRCChangeLanguageListAdapter$1;->this$0:Lus/zoom/zrc/view/adapter/ZRCChangeLanguageListAdapter;

    invoke-static {p1}, Lus/zoom/zrc/view/adapter/ZRCChangeLanguageListAdapter;->access$000(Lus/zoom/zrc/view/adapter/ZRCChangeLanguageListAdapter;)Lus/zoom/zrc/view/adapter/ZRCChangeLanguageListAdapter$OnItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 56
    iget-object p1, p0, Lus/zoom/zrc/view/adapter/ZRCChangeLanguageListAdapter$1;->this$0:Lus/zoom/zrc/view/adapter/ZRCChangeLanguageListAdapter;

    invoke-static {p1}, Lus/zoom/zrc/view/adapter/ZRCChangeLanguageListAdapter;->access$000(Lus/zoom/zrc/view/adapter/ZRCChangeLanguageListAdapter;)Lus/zoom/zrc/view/adapter/ZRCChangeLanguageListAdapter$OnItemClickListener;

    move-result-object p1

    iget-object v0, p0, Lus/zoom/zrc/view/adapter/ZRCChangeLanguageListAdapter$1;->val$holder:Lus/zoom/zrc/view/adapter/ZRCChangeLanguageListAdapter$ViewHolder;

    iget-object v1, p0, Lus/zoom/zrc/view/adapter/ZRCChangeLanguageListAdapter$1;->val$locale:Ljava/util/Locale;

    invoke-interface {p1, v0, v1}, Lus/zoom/zrc/view/adapter/ZRCChangeLanguageListAdapter$OnItemClickListener;->OnItemClicked(Lus/zoom/zrc/view/adapter/ZRCChangeLanguageListAdapter$ViewHolder;Ljava/util/Locale;)V

    :cond_0
    return-void
.end method
