.class public Lus/zoom/androidlib/widget/adapter/ZmSingleChoiceItem;
.super Ljava/lang/Object;
.source "ZmSingleChoiceItem.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private iconContentDescription:Ljava/lang/String;

.field private imgIconRes:I

.field private isSelected:Z

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lus/zoom/androidlib/widget/adapter/ZmSingleChoiceItem;->data:Ljava/lang/Object;

    .line 16
    iput-object p2, p0, Lus/zoom/androidlib/widget/adapter/ZmSingleChoiceItem;->title:Ljava/lang/String;

    .line 17
    iput p3, p0, Lus/zoom/androidlib/widget/adapter/ZmSingleChoiceItem;->imgIconRes:I

    .line 18
    iput-object p4, p0, Lus/zoom/androidlib/widget/adapter/ZmSingleChoiceItem;->iconContentDescription:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lus/zoom/androidlib/widget/adapter/ZmSingleChoiceItem;->data:Ljava/lang/Object;

    .line 23
    iput-object p2, p0, Lus/zoom/androidlib/widget/adapter/ZmSingleChoiceItem;->title:Ljava/lang/String;

    .line 24
    iput-boolean p5, p0, Lus/zoom/androidlib/widget/adapter/ZmSingleChoiceItem;->isSelected:Z

    .line 25
    iput p3, p0, Lus/zoom/androidlib/widget/adapter/ZmSingleChoiceItem;->imgIconRes:I

    .line 26
    iput-object p4, p0, Lus/zoom/androidlib/widget/adapter/ZmSingleChoiceItem;->iconContentDescription:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lus/zoom/androidlib/widget/adapter/ZmSingleChoiceItem;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public getIconContentDescription()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lus/zoom/androidlib/widget/adapter/ZmSingleChoiceItem;->iconContentDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getImgIconRes()I
    .locals 1

    .line 46
    iget v0, p0, Lus/zoom/androidlib/widget/adapter/ZmSingleChoiceItem;->imgIconRes:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lus/zoom/androidlib/widget/adapter/ZmSingleChoiceItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public isSelected()Z
    .locals 1

    .line 38
    iget-boolean v0, p0, Lus/zoom/androidlib/widget/adapter/ZmSingleChoiceItem;->isSelected:Z

    return v0
.end method

.method public setSelected(Z)V
    .locals 0

    .line 42
    iput-boolean p1, p0, Lus/zoom/androidlib/widget/adapter/ZmSingleChoiceItem;->isSelected:Z

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lus/zoom/androidlib/widget/adapter/ZmSingleChoiceItem;->title:Ljava/lang/String;

    return-void
.end method
