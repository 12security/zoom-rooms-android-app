.class Lus/zoom/zrc/login/widget/LoginKeyCodeView$KeyCodeFilter;
.super Ljava/lang/Object;
.source "LoginKeyCodeView.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/login/widget/LoginKeyCodeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeyCodeFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/login/widget/LoginKeyCodeView;


# direct methods
.method private constructor <init>(Lus/zoom/zrc/login/widget/LoginKeyCodeView;)V
    .locals 0

    .line 643
    iput-object p1, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView$KeyCodeFilter;->this$0:Lus/zoom/zrc/login/widget/LoginKeyCodeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lus/zoom/zrc/login/widget/LoginKeyCodeView;Lus/zoom/zrc/login/widget/LoginKeyCodeView$1;)V
    .locals 0

    .line 643
    invoke-direct {p0, p1}, Lus/zoom/zrc/login/widget/LoginKeyCodeView$KeyCodeFilter;-><init>(Lus/zoom/zrc/login/widget/LoginKeyCodeView;)V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 1

    .line 647
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    if-ge p2, p3, :cond_2

    .line 649
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p5

    .line 650
    iget-object p6, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView$KeyCodeFilter;->this$0:Lus/zoom/zrc/login/widget/LoginKeyCodeView;

    invoke-static {p6}, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->access$1600(Lus/zoom/zrc/login/widget/LoginKeyCodeView;)Ljava/lang/String;

    move-result-object p6

    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p6

    if-eqz p6, :cond_0

    .line 651
    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 652
    :cond_0
    iget-object p6, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView$KeyCodeFilter;->this$0:Lus/zoom/zrc/login/widget/LoginKeyCodeView;

    invoke-static {p6}, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->access$1600(Lus/zoom/zrc/login/widget/LoginKeyCodeView;)Ljava/lang/String;

    move-result-object p6

    invoke-static {p5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p6

    if-eqz p6, :cond_1

    .line 653
    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    return-object p4
.end method
