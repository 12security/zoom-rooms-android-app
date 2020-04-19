.class final Lus/zoom/androidlib/widget/ZMToast$2;
.super Ljava/lang/Object;
.source "ZMToast.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/androidlib/widget/ZMToast;->show(Landroid/content/Context;Ljava/lang/CharSequence;IIJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$finalDuration:I

.field final synthetic val$gravity:I

.field final synthetic val$msg:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;II)V
    .locals 0

    .line 74
    iput-object p1, p0, Lus/zoom/androidlib/widget/ZMToast$2;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lus/zoom/androidlib/widget/ZMToast$2;->val$msg:Ljava/lang/CharSequence;

    iput p3, p0, Lus/zoom/androidlib/widget/ZMToast$2;->val$finalDuration:I

    iput p4, p0, Lus/zoom/androidlib/widget/ZMToast$2;->val$gravity:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 77
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMToast$2;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lus/zoom/androidlib/widget/ZMToast$2;->val$msg:Ljava/lang/CharSequence;

    iget v2, p0, Lus/zoom/androidlib/widget/ZMToast$2;->val$finalDuration:I

    iget v3, p0, Lus/zoom/androidlib/widget/ZMToast$2;->val$gravity:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lus/zoom/androidlib/widget/ZMToast;->access$100(Landroid/content/Context;Ljava/lang/CharSequence;ILjava/lang/Integer;)V

    return-void
.end method
