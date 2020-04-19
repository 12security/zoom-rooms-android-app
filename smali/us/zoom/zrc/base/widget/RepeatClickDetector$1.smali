.class final Lus/zoom/zrc/base/widget/RepeatClickDetector$1;
.super Ljava/lang/Object;
.source "RepeatClickDetector.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/base/widget/RepeatClickDetector;->setupRepeatClick(Landroid/view/View;Lus/zoom/zrc/base/widget/RepeatClickDetector$OnRepeatClickListener;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$detector:Lus/zoom/zrc/base/widget/RepeatClickDetector;

.field final synthetic val$listener:Lus/zoom/zrc/base/widget/RepeatClickDetector$OnRepeatClickListener;

.field final synthetic val$repeatCount:I


# direct methods
.method constructor <init>(Lus/zoom/zrc/base/widget/RepeatClickDetector;ILus/zoom/zrc/base/widget/RepeatClickDetector$OnRepeatClickListener;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lus/zoom/zrc/base/widget/RepeatClickDetector$1;->val$detector:Lus/zoom/zrc/base/widget/RepeatClickDetector;

    iput p2, p0, Lus/zoom/zrc/base/widget/RepeatClickDetector$1;->val$repeatCount:I

    iput-object p3, p0, Lus/zoom/zrc/base/widget/RepeatClickDetector$1;->val$listener:Lus/zoom/zrc/base/widget/RepeatClickDetector$OnRepeatClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 49
    iget-object p1, p0, Lus/zoom/zrc/base/widget/RepeatClickDetector$1;->val$detector:Lus/zoom/zrc/base/widget/RepeatClickDetector;

    invoke-static {p1}, Lus/zoom/zrc/base/widget/RepeatClickDetector;->access$000(Lus/zoom/zrc/base/widget/RepeatClickDetector;)V

    .line 50
    iget-object p1, p0, Lus/zoom/zrc/base/widget/RepeatClickDetector$1;->val$detector:Lus/zoom/zrc/base/widget/RepeatClickDetector;

    invoke-static {p1}, Lus/zoom/zrc/base/widget/RepeatClickDetector;->access$100(Lus/zoom/zrc/base/widget/RepeatClickDetector;)I

    move-result p1

    iget v0, p0, Lus/zoom/zrc/base/widget/RepeatClickDetector$1;->val$repeatCount:I

    if-lt p1, v0, :cond_0

    .line 51
    iget-object p1, p0, Lus/zoom/zrc/base/widget/RepeatClickDetector$1;->val$detector:Lus/zoom/zrc/base/widget/RepeatClickDetector;

    invoke-static {p1}, Lus/zoom/zrc/base/widget/RepeatClickDetector;->access$200(Lus/zoom/zrc/base/widget/RepeatClickDetector;)V

    .line 52
    iget-object p1, p0, Lus/zoom/zrc/base/widget/RepeatClickDetector$1;->val$listener:Lus/zoom/zrc/base/widget/RepeatClickDetector$OnRepeatClickListener;

    iget v0, p0, Lus/zoom/zrc/base/widget/RepeatClickDetector$1;->val$repeatCount:I

    invoke-interface {p1, v0}, Lus/zoom/zrc/base/widget/RepeatClickDetector$OnRepeatClickListener;->onRepeatClicked(I)V

    :cond_0
    return-void
.end method
