.class Lus/zoom/androidlib/widget/ZMPopupMenu$2;
.super Ljava/lang/Object;
.source "ZMPopupMenu.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


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

    .line 76
    iput-object p1, p0, Lus/zoom/androidlib/widget/ZMPopupMenu$2;->this$0:Lus/zoom/androidlib/widget/ZMPopupMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 3

    .line 80
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMPopupMenu$2;->this$0:Lus/zoom/androidlib/widget/ZMPopupMenu;

    invoke-static {v0}, Lus/zoom/androidlib/widget/ZMPopupMenu;->access$100(Lus/zoom/androidlib/widget/ZMPopupMenu;)Landroid/app/Activity;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Lus/zoom/androidlib/widget/ZMPopupMenu;->access$200(Lus/zoom/androidlib/widget/ZMPopupMenu;Landroid/app/Activity;F)V

    .line 81
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMPopupMenu$2;->this$0:Lus/zoom/androidlib/widget/ZMPopupMenu;

    invoke-static {v0}, Lus/zoom/androidlib/widget/ZMPopupMenu;->access$300(Lus/zoom/androidlib/widget/ZMPopupMenu;)Lus/zoom/androidlib/widget/ZMPopupMenu$OnDismissListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMPopupMenu$2;->this$0:Lus/zoom/androidlib/widget/ZMPopupMenu;

    invoke-static {v0}, Lus/zoom/androidlib/widget/ZMPopupMenu;->access$300(Lus/zoom/androidlib/widget/ZMPopupMenu;)Lus/zoom/androidlib/widget/ZMPopupMenu$OnDismissListener;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/androidlib/widget/ZMPopupMenu$2;->this$0:Lus/zoom/androidlib/widget/ZMPopupMenu;

    invoke-interface {v0, v1}, Lus/zoom/androidlib/widget/ZMPopupMenu$OnDismissListener;->onDismiss(Lus/zoom/androidlib/widget/ZMPopupMenu;)V

    :cond_0
    return-void
.end method
