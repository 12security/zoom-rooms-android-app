.class Lus/zoom/zrc/ShareByPhoneDialogFragment$2;
.super Ljava/lang/Object;
.source "ShareByPhoneDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/ShareByPhoneDialogFragment;->setupBackView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/ShareByPhoneDialogFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrc/ShareByPhoneDialogFragment;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lus/zoom/zrc/ShareByPhoneDialogFragment$2;->this$0:Lus/zoom/zrc/ShareByPhoneDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 173
    iget-object p1, p0, Lus/zoom/zrc/ShareByPhoneDialogFragment$2;->this$0:Lus/zoom/zrc/ShareByPhoneDialogFragment;

    invoke-virtual {p1}, Lus/zoom/zrc/ShareByPhoneDialogFragment;->onBackPressed()V

    return-void
.end method