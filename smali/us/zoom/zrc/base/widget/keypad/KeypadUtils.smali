.class public Lus/zoom/zrc/base/widget/keypad/KeypadUtils;
.super Ljava/lang/Object;
.source "KeypadUtils.java"


# static fields
.field static final DISPLAY_PLUS:Ljava/lang/String; = "\uff0b"

.field static final INPUT_PLUS:Ljava/lang/String; = "+"

.field private static final POUND_ITEM:Lus/zoom/zrc/base/widget/keypad/DialItem;

.field public static final PSTN_KEYS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/zrc/base/widget/keypad/DialItem;",
            ">;"
        }
    .end annotation
.end field

.field public static final SIP_KEYS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/zrc/base/widget/keypad/DialItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final STAR_ITEM:Lus/zoom/zrc/base/widget/keypad/DialItem;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 19
    new-instance v0, Lus/zoom/zrc/base/widget/keypad/DialItem;

    const-string v1, "*"

    sget v2, Lus/zoom/zrcbox/R$drawable;->star:I

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, Lus/zoom/zrc/base/widget/keypad/DialItem;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lus/zoom/zrc/base/widget/keypad/KeypadUtils;->STAR_ITEM:Lus/zoom/zrc/base/widget/keypad/DialItem;

    .line 20
    new-instance v0, Lus/zoom/zrc/base/widget/keypad/DialItem;

    const-string v1, "#"

    sget v2, Lus/zoom/zrcbox/R$drawable;->pound:I

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, Lus/zoom/zrc/base/widget/keypad/DialItem;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lus/zoom/zrc/base/widget/keypad/KeypadUtils;->POUND_ITEM:Lus/zoom/zrc/base/widget/keypad/DialItem;

    const/16 v0, 0xc

    .line 22
    new-array v0, v0, [Lus/zoom/zrc/base/widget/keypad/DialItem;

    new-instance v1, Lus/zoom/zrc/base/widget/keypad/DialItem;

    const-string v2, "1"

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lus/zoom/zrc/base/widget/keypad/DialItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lus/zoom/zrc/base/widget/keypad/DialItem;

    const-string v2, "2"

    const-string v3, "ABC"

    invoke-direct {v1, v2, v3}, Lus/zoom/zrc/base/widget/keypad/DialItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lus/zoom/zrc/base/widget/keypad/DialItem;

    const-string v2, "3"

    const-string v3, "DEF"

    invoke-direct {v1, v2, v3}, Lus/zoom/zrc/base/widget/keypad/DialItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lus/zoom/zrc/base/widget/keypad/DialItem;

    const-string v2, "4"

    const-string v3, "GHI"

    invoke-direct {v1, v2, v3}, Lus/zoom/zrc/base/widget/keypad/DialItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lus/zoom/zrc/base/widget/keypad/DialItem;

    const-string v2, "5"

    const-string v3, "JKL"

    invoke-direct {v1, v2, v3}, Lus/zoom/zrc/base/widget/keypad/DialItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lus/zoom/zrc/base/widget/keypad/DialItem;

    const-string v2, "6"

    const-string v3, "MNO"

    invoke-direct {v1, v2, v3}, Lus/zoom/zrc/base/widget/keypad/DialItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Lus/zoom/zrc/base/widget/keypad/DialItem;

    const-string v2, "7"

    const-string v3, "PQRS"

    invoke-direct {v1, v2, v3}, Lus/zoom/zrc/base/widget/keypad/DialItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, Lus/zoom/zrc/base/widget/keypad/DialItem;

    const-string v2, "8"

    const-string v3, "TUV"

    invoke-direct {v1, v2, v3}, Lus/zoom/zrc/base/widget/keypad/DialItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-instance v1, Lus/zoom/zrc/base/widget/keypad/DialItem;

    const-string v2, "9"

    const-string v3, "WXYZ"

    invoke-direct {v1, v2, v3}, Lus/zoom/zrc/base/widget/keypad/DialItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lus/zoom/zrc/base/widget/keypad/KeypadUtils;->STAR_ITEM:Lus/zoom/zrc/base/widget/keypad/DialItem;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    new-instance v1, Lus/zoom/zrc/base/widget/keypad/DialItem;

    const-string v2, "0"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lus/zoom/zrc/base/widget/keypad/DialItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lus/zoom/zrc/base/widget/keypad/KeypadUtils;->POUND_ITEM:Lus/zoom/zrc/base/widget/keypad/DialItem;

    const/16 v3, 0xb

    aput-object v1, v0, v3

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lus/zoom/zrc/base/widget/keypad/KeypadUtils;->PSTN_KEYS:Ljava/util/List;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lus/zoom/zrc/base/widget/keypad/KeypadUtils;->PSTN_KEYS:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lus/zoom/zrc/base/widget/keypad/KeypadUtils;->SIP_KEYS:Ljava/util/List;

    .line 34
    invoke-static {}, Lus/zoom/zrc/ZRCApplication;->getInstance()Lus/zoom/zrc/ZRCApplication;

    move-result-object v0

    .line 35
    sget-object v1, Lus/zoom/zrc/base/widget/keypad/KeypadUtils;->STAR_ITEM:Lus/zoom/zrc/base/widget/keypad/DialItem;

    sget v3, Lus/zoom/zrcbox/R$string;->keypad_starkey:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lus/zoom/zrc/base/widget/keypad/DialItem;->contentDescription:Ljava/lang/String;

    .line 36
    sget-object v1, Lus/zoom/zrc/base/widget/keypad/KeypadUtils;->POUND_ITEM:Lus/zoom/zrc/base/widget/keypad/DialItem;

    sget v3, Lus/zoom/zrcbox/R$string;->keypad_poundkey:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lus/zoom/zrc/base/widget/keypad/DialItem;->contentDescription:Ljava/lang/String;

    .line 38
    sget-object v0, Lus/zoom/zrc/base/widget/keypad/KeypadUtils;->SIP_KEYS:Ljava/util/List;

    new-instance v1, Lus/zoom/zrc/base/widget/keypad/DialItem;

    const-string v3, "0"

    const-string v4, "\uff0b"

    invoke-direct {v1, v3, v4}, Lus/zoom/zrc/base/widget/keypad/DialItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
