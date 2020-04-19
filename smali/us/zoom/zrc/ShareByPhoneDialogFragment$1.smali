.class Lus/zoom/zrc/ShareByPhoneDialogFragment$1;
.super Ljava/lang/Object;
.source "ShareByPhoneDialogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/ShareByPhoneDialogFragment;->initAccessibility()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/ShareByPhoneDialogFragment;

.field final synthetic val$backView:Landroid/view/View;


# direct methods
.method constructor <init>(Lus/zoom/zrc/ShareByPhoneDialogFragment;Landroid/view/View;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lus/zoom/zrc/ShareByPhoneDialogFragment$1;->this$0:Lus/zoom/zrc/ShareByPhoneDialogFragment;

    iput-object p2, p0, Lus/zoom/zrc/ShareByPhoneDialogFragment$1;->val$backView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 151
    iget-object v0, p0, Lus/zoom/zrc/ShareByPhoneDialogFragment$1;->val$backView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 152
    iget-object v0, p0, Lus/zoom/zrc/ShareByPhoneDialogFragment$1;->val$backView:Landroid/view/View;

    invoke-static {v0}, Lus/zoom/androidlib/util/AccessibilityUtil;->sendAccessibilityFocusEvent(Landroid/view/View;)V

    return-void
.end method
