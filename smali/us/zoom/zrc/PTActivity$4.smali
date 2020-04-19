.class Lus/zoom/zrc/PTActivity$4;
.super Ljava/lang/Object;
.source "PTActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/PTActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/PTActivity;


# direct methods
.method constructor <init>(Lus/zoom/zrc/PTActivity;)V
    .locals 0

    .line 536
    iput-object p1, p0, Lus/zoom/zrc/PTActivity$4;->this$0:Lus/zoom/zrc/PTActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 539
    iget-object v0, p0, Lus/zoom/zrc/PTActivity$4;->this$0:Lus/zoom/zrc/PTActivity;

    invoke-static {v0}, Lus/zoom/zrc/PTActivity;->access$600(Lus/zoom/zrc/PTActivity;)Lus/zoom/zrc/view/PTMenuView;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/view/PTMenuView;->requestFocus()Z

    .line 540
    iget-object v0, p0, Lus/zoom/zrc/PTActivity$4;->this$0:Lus/zoom/zrc/PTActivity;

    invoke-static {v0}, Lus/zoom/zrc/PTActivity;->access$600(Lus/zoom/zrc/PTActivity;)Lus/zoom/zrc/view/PTMenuView;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/view/PTMenuView;->getSelectedView()Lus/zoom/zrc/view/PTMenuViewItem;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/androidlib/util/AccessibilityUtil;->sendAccessibilityFocusEvent(Landroid/view/View;)V

    return-void
.end method
