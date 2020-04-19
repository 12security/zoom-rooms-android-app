.class public Lus/zoom/androidlib/widget/ZMImageButton;
.super Landroid/widget/ImageButton;
.source "ZMImageButton.java"


# instance fields
.field private mOnClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    invoke-direct {p0, p1, p2}, Lus/zoom/androidlib/widget/ZMImageButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    invoke-direct {p0, p1, p2}, Lus/zoom/androidlib/widget/ZMImageButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lus/zoom/androidlib/widget/ZMImageButton;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 8
    iget-object p0, p0, Lus/zoom/androidlib/widget/ZMImageButton;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 27
    new-instance p1, Lus/zoom/androidlib/widget/ZMImageButton$1;

    invoke-direct {p1, p0}, Lus/zoom/androidlib/widget/ZMImageButton$1;-><init>(Lus/zoom/androidlib/widget/ZMImageButton;)V

    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lus/zoom/androidlib/widget/ZMImageButton;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method
