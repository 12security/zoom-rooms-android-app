.class Lus/zoom/zrc/phonecall/DTMFCallNameTextView$NameTextViewTreeObserver;
.super Ljava/lang/Object;
.source "DTMFCallNameTextView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/phonecall/DTMFCallNameTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NameTextViewTreeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/phonecall/DTMFCallNameTextView;


# direct methods
.method private constructor <init>(Lus/zoom/zrc/phonecall/DTMFCallNameTextView;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lus/zoom/zrc/phonecall/DTMFCallNameTextView$NameTextViewTreeObserver;->this$0:Lus/zoom/zrc/phonecall/DTMFCallNameTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lus/zoom/zrc/phonecall/DTMFCallNameTextView;Lus/zoom/zrc/phonecall/DTMFCallNameTextView$1;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lus/zoom/zrc/phonecall/DTMFCallNameTextView$NameTextViewTreeObserver;-><init>(Lus/zoom/zrc/phonecall/DTMFCallNameTextView;)V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .line 58
    iget-object v0, p0, Lus/zoom/zrc/phonecall/DTMFCallNameTextView$NameTextViewTreeObserver;->this$0:Lus/zoom/zrc/phonecall/DTMFCallNameTextView;

    invoke-static {v0}, Lus/zoom/zrc/phonecall/DTMFCallNameTextView;->access$100(Lus/zoom/zrc/phonecall/DTMFCallNameTextView;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/zrcsdk/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 63
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/phonecall/DTMFCallNameTextView$NameTextViewTreeObserver;->this$0:Lus/zoom/zrc/phonecall/DTMFCallNameTextView;

    invoke-virtual {v0}, Lus/zoom/zrc/phonecall/DTMFCallNameTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 64
    iget-object v1, p0, Lus/zoom/zrc/phonecall/DTMFCallNameTextView$NameTextViewTreeObserver;->this$0:Lus/zoom/zrc/phonecall/DTMFCallNameTextView;

    invoke-static {v1}, Lus/zoom/zrc/phonecall/DTMFCallNameTextView;->access$100(Lus/zoom/zrc/phonecall/DTMFCallNameTextView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 69
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/phonecall/DTMFCallNameTextView$NameTextViewTreeObserver;->this$0:Lus/zoom/zrc/phonecall/DTMFCallNameTextView;

    invoke-virtual {v0}, Lus/zoom/zrc/phonecall/DTMFCallNameTextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 70
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v0

    if-gtz v0, :cond_2

    return-void

    .line 75
    :cond_2
    iget-object v0, p0, Lus/zoom/zrc/phonecall/DTMFCallNameTextView$NameTextViewTreeObserver;->this$0:Lus/zoom/zrc/phonecall/DTMFCallNameTextView;

    invoke-static {v0}, Lus/zoom/zrc/phonecall/DTMFCallNameTextView;->access$100(Lus/zoom/zrc/phonecall/DTMFCallNameTextView;)Ljava/lang/String;

    move-result-object v0

    const-string v2, " "

    .line 76
    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_3

    .line 78
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 80
    iget-object v1, p0, Lus/zoom/zrc/phonecall/DTMFCallNameTextView$NameTextViewTreeObserver;->this$0:Lus/zoom/zrc/phonecall/DTMFCallNameTextView;

    invoke-virtual {v1, v0}, Lus/zoom/zrc/phonecall/DTMFCallNameTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method
