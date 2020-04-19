.class Lus/zoom/zrc/view/Participants_More_PopupView$1;
.super Ljava/lang/Object;
.source "Participants_More_PopupView.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/view/Participants_More_PopupView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/view/Participants_More_PopupView;


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/Participants_More_PopupView;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lus/zoom/zrc/view/Participants_More_PopupView$1;->this$0:Lus/zoom/zrc/view/Participants_More_PopupView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .line 47
    iget-object v0, p0, Lus/zoom/zrc/view/Participants_More_PopupView$1;->this$0:Lus/zoom/zrc/view/Participants_More_PopupView;

    invoke-static {v0}, Lus/zoom/zrc/view/Participants_More_PopupView;->access$100(Lus/zoom/zrc/view/Participants_More_PopupView;)Lus/zoom/zrc/utils/ObserverCallBackManager;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/view/Participants_More_PopupView$1;->this$0:Lus/zoom/zrc/view/Participants_More_PopupView;

    invoke-static {v1}, Lus/zoom/zrc/view/Participants_More_PopupView;->access$000(Lus/zoom/zrc/view/Participants_More_PopupView;)Lus/zoom/zrc/view/Participants_More_PopupView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lus/zoom/zrc/utils/ObserverCallBackManager;->unregisterObserver(Lus/zoom/zrc/utils/ObserverCallBackManager$OnClickListener;)V

    return-void
.end method
