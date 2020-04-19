.class Lus/zoom/androidlib/widget/ZMAlertDialog$2;
.super Ljava/lang/Object;
.source "ZMAlertDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/androidlib/widget/ZMAlertDialog;->createListView()Landroid/widget/ListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/androidlib/widget/ZMAlertDialog;

.field final synthetic val$listView:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lus/zoom/androidlib/widget/ZMAlertDialog;Landroid/widget/ListView;)V
    .locals 0

    .line 526
    iput-object p1, p0, Lus/zoom/androidlib/widget/ZMAlertDialog$2;->this$0:Lus/zoom/androidlib/widget/ZMAlertDialog;

    iput-object p2, p0, Lus/zoom/androidlib/widget/ZMAlertDialog$2;->val$listView:Landroid/widget/ListView;

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

    .line 531
    iget-object p1, p0, Lus/zoom/androidlib/widget/ZMAlertDialog$2;->this$0:Lus/zoom/androidlib/widget/ZMAlertDialog;

    invoke-static {p1}, Lus/zoom/androidlib/widget/ZMAlertDialog;->access$600(Lus/zoom/androidlib/widget/ZMAlertDialog;)Lus/zoom/androidlib/widget/ZMAlertHolder;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/androidlib/widget/ZMAlertHolder;->getListListener()Landroid/content/DialogInterface$OnClickListener;

    move-result-object p1

    iget-object p2, p0, Lus/zoom/androidlib/widget/ZMAlertDialog$2;->this$0:Lus/zoom/androidlib/widget/ZMAlertDialog;

    invoke-interface {p1, p2, p3}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 532
    iget-object p1, p0, Lus/zoom/androidlib/widget/ZMAlertDialog$2;->this$0:Lus/zoom/androidlib/widget/ZMAlertDialog;

    invoke-static {p1}, Lus/zoom/androidlib/widget/ZMAlertDialog;->access$600(Lus/zoom/androidlib/widget/ZMAlertDialog;)Lus/zoom/androidlib/widget/ZMAlertHolder;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/androidlib/widget/ZMAlertHolder;->getType()I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_0

    .line 533
    iget-object p1, p0, Lus/zoom/androidlib/widget/ZMAlertDialog$2;->val$listView:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    check-cast p1, Lus/zoom/androidlib/widget/SingleItemAdapter;

    .line 534
    invoke-virtual {p1, p3}, Lus/zoom/androidlib/widget/SingleItemAdapter;->setIndex(I)V

    .line 535
    iget-object p1, p0, Lus/zoom/androidlib/widget/ZMAlertDialog$2;->val$listView:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    check-cast p1, Lus/zoom/androidlib/widget/SingleItemAdapter;

    .line 536
    invoke-virtual {p1}, Lus/zoom/androidlib/widget/SingleItemAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 537
    :cond_0
    iget-object p1, p0, Lus/zoom/androidlib/widget/ZMAlertDialog$2;->this$0:Lus/zoom/androidlib/widget/ZMAlertDialog;

    invoke-static {p1}, Lus/zoom/androidlib/widget/ZMAlertDialog;->access$600(Lus/zoom/androidlib/widget/ZMAlertDialog;)Lus/zoom/androidlib/widget/ZMAlertHolder;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/androidlib/widget/ZMAlertHolder;->getType()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    .line 538
    iget-object p1, p0, Lus/zoom/androidlib/widget/ZMAlertDialog$2;->this$0:Lus/zoom/androidlib/widget/ZMAlertDialog;

    invoke-virtual {p1}, Lus/zoom/androidlib/widget/ZMAlertDialog;->dismiss()V

    :cond_1
    :goto_0
    return-void
.end method
