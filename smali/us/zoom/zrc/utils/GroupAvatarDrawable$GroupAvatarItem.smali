.class public Lus/zoom/zrc/utils/GroupAvatarDrawable$GroupAvatarItem;
.super Ljava/lang/Object;
.source "GroupAvatarDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/utils/GroupAvatarDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GroupAvatarItem"
.end annotation


# static fields
.field public static final INVALID_CONTACT_ID:I = -0x1


# instance fields
.field public avatar:Ljava/lang/String;

.field public contactId:I

.field public jid:Ljava/lang/String;

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 31
    iput v0, p0, Lus/zoom/zrc/utils/GroupAvatarDrawable$GroupAvatarItem;->contactId:I

    .line 35
    iput-object p1, p0, Lus/zoom/zrc/utils/GroupAvatarDrawable$GroupAvatarItem;->name:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lus/zoom/zrc/utils/GroupAvatarDrawable$GroupAvatarItem;->avatar:Ljava/lang/String;

    .line 37
    iput p3, p0, Lus/zoom/zrc/utils/GroupAvatarDrawable$GroupAvatarItem;->contactId:I

    .line 38
    iput-object p4, p0, Lus/zoom/zrc/utils/GroupAvatarDrawable$GroupAvatarItem;->jid:Ljava/lang/String;

    return-void
.end method
