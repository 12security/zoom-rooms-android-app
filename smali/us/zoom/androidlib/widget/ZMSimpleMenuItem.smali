.class public Lus/zoom/androidlib/widget/ZMSimpleMenuItem;
.super Ljava/lang/Object;
.source "ZMSimpleMenuItem.java"

# interfaces
.implements Lus/zoom/androidlib/widget/IZMMenuItem;


# instance fields
.field private mAction:I

.field private mDisable:Z

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mLabel:Ljava/lang/String;

.field private mSelected:Z

.field private mTextColor:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lus/zoom/androidlib/widget/ZMSimpleMenuItem;->mAction:I

    .line 12
    iput-boolean v0, p0, Lus/zoom/androidlib/widget/ZMSimpleMenuItem;->mSelected:Z

    .line 13
    iput-boolean v0, p0, Lus/zoom/androidlib/widget/ZMSimpleMenuItem;->mDisable:Z

    .line 14
    iput v0, p0, Lus/zoom/androidlib/widget/ZMSimpleMenuItem;->mTextColor:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 25
    invoke-direct {p0, p1, p2, v0, v1}, Lus/zoom/androidlib/widget/ZMSimpleMenuItem;-><init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lus/zoom/androidlib/widget/ZMSimpleMenuItem;->mAction:I

    .line 12
    iput-boolean v0, p0, Lus/zoom/androidlib/widget/ZMSimpleMenuItem;->mSelected:Z

    .line 13
    iput-boolean v0, p0, Lus/zoom/androidlib/widget/ZMSimpleMenuItem;->mDisable:Z

    .line 14
    iput v0, p0, Lus/zoom/androidlib/widget/ZMSimpleMenuItem;->mTextColor:I

    .line 29
    iput p1, p0, Lus/zoom/androidlib/widget/ZMSimpleMenuItem;->mAction:I

    .line 30
    iput-object p2, p0, Lus/zoom/androidlib/widget/ZMSimpleMenuItem;->mLabel:Ljava/lang/String;

    .line 31
    iput p3, p0, Lus/zoom/androidlib/widget/ZMSimpleMenuItem;->mTextColor:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;Z)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 35
    invoke-direct/range {v0 .. v5}, Lus/zoom/androidlib/widget/ZMSimpleMenuItem;-><init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;ZZ)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;ZZ)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lus/zoom/androidlib/widget/ZMSimpleMenuItem;->mAction:I

    .line 12
    iput-boolean v0, p0, Lus/zoom/androidlib/widget/ZMSimpleMenuItem;->mSelected:Z

    .line 13
    iput-boolean v0, p0, Lus/zoom/androidlib/widget/ZMSimpleMenuItem;->mDisable:Z

    .line 14
    iput v0, p0, Lus/zoom/androidlib/widget/ZMSimpleMenuItem;->mTextColor:I

    .line 39
    iput p1, p0, Lus/zoom/androidlib/widget/ZMSimpleMenuItem;->mAction:I

    .line 40
    iput-object p2, p0, Lus/zoom/androidlib/widget/ZMSimpleMenuItem;->mLabel:Ljava/lang/String;

    .line 41
    iput-object p3, p0, Lus/zoom/androidlib/widget/ZMSimpleMenuItem;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 42
    iput-boolean p4, p0, Lus/zoom/androidlib/widget/ZMSimpleMenuItem;->mSelected:Z

    .line 43
    iput-boolean p5, p0, Lus/zoom/androidlib/widget/ZMSimpleMenuItem;->mDisable:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const/4 v0, 0x0

    .line 21
    invoke-direct {p0, v0, p1, p2, v0}, Lus/zoom/androidlib/widget/ZMSimpleMenuItem;-><init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    return-void
.end method


# virtual methods
.method public getAction()I
    .locals 1

    .line 85
    iget v0, p0, Lus/zoom/androidlib/widget/ZMSimpleMenuItem;->mAction:I

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 76
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMSimpleMenuItem;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMSimpleMenuItem;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getTextColor()I
    .locals 1

    .line 111
    iget v0, p0, Lus/zoom/androidlib/widget/ZMSimpleMenuItem;->mTextColor:I

    return v0
.end method

.method public isDisable()Z
    .locals 1

    .line 99
    iget-boolean v0, p0, Lus/zoom/androidlib/widget/ZMSimpleMenuItem;->mDisable:Z

    return v0
.end method

.method public isSelected()Z
    .locals 1

    .line 94
    iget-boolean v0, p0, Lus/zoom/androidlib/widget/ZMSimpleMenuItem;->mSelected:Z

    return v0
.end method

.method public setAction(I)V
    .locals 0

    .line 89
    iput p1, p0, Lus/zoom/androidlib/widget/ZMSimpleMenuItem;->mAction:I

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lus/zoom/androidlib/widget/ZMSimpleMenuItem;->mIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lus/zoom/androidlib/widget/ZMSimpleMenuItem;->mLabel:Ljava/lang/String;

    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    .line 107
    iput-boolean p1, p0, Lus/zoom/androidlib/widget/ZMSimpleMenuItem;->mSelected:Z

    return-void
.end method

.method public setTextColor(I)V
    .locals 0

    .line 115
    iput p1, p0, Lus/zoom/androidlib/widget/ZMSimpleMenuItem;->mTextColor:I

    return-void
.end method

.method public setmDisable(Z)V
    .locals 0

    .line 103
    iput-boolean p1, p0, Lus/zoom/androidlib/widget/ZMSimpleMenuItem;->mDisable:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 62
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMSimpleMenuItem;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public updateMenuItem(Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZZ)V
    .locals 0

    .line 53
    iput-object p1, p0, Lus/zoom/androidlib/widget/ZMSimpleMenuItem;->mLabel:Ljava/lang/String;

    .line 54
    iput-object p2, p0, Lus/zoom/androidlib/widget/ZMSimpleMenuItem;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 55
    iput-boolean p3, p0, Lus/zoom/androidlib/widget/ZMSimpleMenuItem;->mSelected:Z

    .line 56
    iput-boolean p4, p0, Lus/zoom/androidlib/widget/ZMSimpleMenuItem;->mDisable:Z

    return-void
.end method

.method public updateMenuItem(Ljava/lang/String;ZZ)V
    .locals 0

    .line 47
    iput-object p1, p0, Lus/zoom/androidlib/widget/ZMSimpleMenuItem;->mLabel:Ljava/lang/String;

    .line 48
    iput-boolean p2, p0, Lus/zoom/androidlib/widget/ZMSimpleMenuItem;->mSelected:Z

    .line 49
    iput-boolean p3, p0, Lus/zoom/androidlib/widget/ZMSimpleMenuItem;->mDisable:Z

    return-void
.end method
