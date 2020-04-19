.class Lus/zoom/zrc/base/app/ZRCAlertDialog$2;
.super Ljava/lang/Object;
.source "ZRCAlertDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/base/app/ZRCAlertDialog;->createListView()Landroid/widget/ListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/base/app/ZRCAlertDialog;

.field final synthetic val$listView:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lus/zoom/zrc/base/app/ZRCAlertDialog;Landroid/widget/ListView;)V
    .locals 0

    .line 509
    iput-object p1, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog$2;->this$0:Lus/zoom/zrc/base/app/ZRCAlertDialog;

    iput-object p2, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog$2;->val$listView:Landroid/widget/ListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 514
    iget-object p1, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog$2;->this$0:Lus/zoom/zrc/base/app/ZRCAlertDialog;

    invoke-static {p1}, Lus/zoom/zrc/base/app/ZRCAlertDialog;->access$700(Lus/zoom/zrc/base/app/ZRCAlertDialog;)Lus/zoom/zrc/base/app/ZRCAlertHolder;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/base/app/ZRCAlertHolder;->getListListener()Landroid/content/DialogInterface$OnClickListener;

    move-result-object p1

    iget-object p2, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog$2;->this$0:Lus/zoom/zrc/base/app/ZRCAlertDialog;

    invoke-interface {p1, p2, p3}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 515
    iget-object p1, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog$2;->this$0:Lus/zoom/zrc/base/app/ZRCAlertDialog;

    invoke-static {p1}, Lus/zoom/zrc/base/app/ZRCAlertDialog;->access$700(Lus/zoom/zrc/base/app/ZRCAlertDialog;)Lus/zoom/zrc/base/app/ZRCAlertHolder;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/base/app/ZRCAlertHolder;->getType()I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_0

    .line 516
    iget-object p1, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog$2;->val$listView:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    check-cast p1, Lus/zoom/zrc/base/app/SingleItemAdapter;

    .line 517
    invoke-virtual {p1, p3}, Lus/zoom/zrc/base/app/SingleItemAdapter;->setIndex(I)V

    .line 518
    iget-object p1, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog$2;->val$listView:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    check-cast p1, Lus/zoom/zrc/base/app/SingleItemAdapter;

    .line 519
    invoke-virtual {p1}, Lus/zoom/zrc/base/app/SingleItemAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 520
    :cond_0
    iget-object p1, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog$2;->this$0:Lus/zoom/zrc/base/app/ZRCAlertDialog;

    invoke-static {p1}, Lus/zoom/zrc/base/app/ZRCAlertDialog;->access$700(Lus/zoom/zrc/base/app/ZRCAlertDialog;)Lus/zoom/zrc/base/app/ZRCAlertHolder;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/base/app/ZRCAlertHolder;->getType()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    .line 521
    iget-object p1, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog$2;->this$0:Lus/zoom/zrc/base/app/ZRCAlertDialog;

    invoke-virtual {p1}, Lus/zoom/zrc/base/app/ZRCAlertDialog;->dismiss()V

    :cond_1
    :goto_0
    return-void
.end method
