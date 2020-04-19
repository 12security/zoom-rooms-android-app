.class public Lus/zoom/zrc/base/widget/keypad/DialItem;
.super Ljava/lang/Object;
.source "DialItem.java"


# instance fields
.field contentDescription:Ljava/lang/String;

.field drawableId:I

.field letter:Ljava/lang/String;

.field public number:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lus/zoom/zrc/base/widget/keypad/DialItem;->number:Ljava/lang/String;

    .line 20
    iput p2, p0, Lus/zoom/zrc/base/widget/keypad/DialItem;->drawableId:I

    .line 21
    iput-object p3, p0, Lus/zoom/zrc/base/widget/keypad/DialItem;->contentDescription:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lus/zoom/zrc/base/widget/keypad/DialItem;->number:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lus/zoom/zrc/base/widget/keypad/DialItem;->letter:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method longClickNumber()Ljava/lang/String;
    .locals 2

    const-string v0, "\uff0b"

    .line 29
    iget-object v1, p0, Lus/zoom/zrc/base/widget/keypad/DialItem;->letter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "+"

    return-object v0

    .line 32
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/base/widget/keypad/DialItem;->number:Ljava/lang/String;

    return-object v0
.end method

.method longClickable()Z
    .locals 2

    const-string v0, "\uff0b"

    .line 25
    iget-object v1, p0, Lus/zoom/zrc/base/widget/keypad/DialItem;->letter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
