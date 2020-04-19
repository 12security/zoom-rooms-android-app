.class Lus/zoom/androidlib/widget/ZMPopupMenu$1;
.super Ljava/lang/Object;
.source "ZMPopupMenu.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/androidlib/widget/ZMPopupMenu;-><init>(Landroid/app/Activity;Landroid/content/Context;ILus/zoom/androidlib/widget/ZMMenuAdapter;Landroid/view/View;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/androidlib/widget/ZMPopupMenu;


# direct methods
.method constructor <init>(Lus/zoom/androidlib/widget/ZMPopupMenu;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lus/zoom/androidlib/widget/ZMPopupMenu$1;->this$0:Lus/zoom/androidlib/widget/ZMPopupMenu;

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

    .line 67
    iget-object p1, p0, Lus/zoom/androidlib/widget/ZMPopupMenu$1;->this$0:Lus/zoom/androidlib/widget/ZMPopupMenu;

    invoke-static {p1}, Lus/zoom/androidlib/widget/ZMPopupMenu;->access$000(Lus/zoom/androidlib/widget/ZMPopupMenu;)Lus/zoom/androidlib/widget/ZMMenuAdapter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lus/zoom/androidlib/widget/ZMMenuAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    .line 68
    instance-of p2, p1, Lus/zoom/androidlib/widget/IZMMenuItem;

    if-eqz p2, :cond_0

    .line 69
    check-cast p1, Lus/zoom/androidlib/widget/IZMMenuItem;

    .line 70
    iget-object p2, p0, Lus/zoom/androidlib/widget/ZMPopupMenu$1;->this$0:Lus/zoom/androidlib/widget/ZMPopupMenu;

    invoke-virtual {p2, p1}, Lus/zoom/androidlib/widget/ZMPopupMenu;->onMenuItemClick(Lus/zoom/androidlib/widget/IZMMenuItem;)V

    :cond_0
    return-void
.end method
