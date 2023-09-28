# classes.dex

.class public Landroid/content/UriMatcher;
.super Ljava/lang/Object;


# static fields
.field private static final EXACT:I = 0x0

.field public static final NO_MATCH:I = -0x1

.field private static final NUMBER:I = 0x1

.field private static final TEXT:I = 0x2


# instance fields
.field private mChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/UriMatcher;",
            ">;"
        }
    .end annotation
.end field

.field private mCode:I

.field private final mText:Ljava/lang/String;

.field private final mWhich:I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/content/UriMatcher;->mCode:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/content/UriMatcher;->mWhich:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/UriMatcher;->mChildren:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/UriMatcher;->mText:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/content/UriMatcher;->mCode:I

    iput p1, p0, Landroid/content/UriMatcher;->mWhich:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/UriMatcher;->mChildren:Ljava/util/ArrayList;

    iput-object p2, p0, Landroid/content/UriMatcher;->mText:Ljava/lang/String;

    return-void
.end method

.method private static createChild(Ljava/lang/String;)Landroid/content/UriMatcher;
    .registers 6

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "*"

    const-string v4, "#"

    sparse-switch v0, :sswitch_data_36

    :cond_d
    goto :goto_1e

    :sswitch_e
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    move v0, v2

    goto :goto_1f

    :sswitch_16
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    move v0, v1

    goto :goto_1f

    :goto_1e
    const/4 v0, -0x1

    :goto_1f
    packed-switch v0, :pswitch_data_40

    new-instance v0, Landroid/content/UriMatcher;

    invoke-direct {v0, v1, p0}, Landroid/content/UriMatcher;-><init>(ILjava/lang/String;)V

    return-object v0

    :pswitch_28  #0x1
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, 0x2

    invoke-direct {v0, v1, v3}, Landroid/content/UriMatcher;-><init>(ILjava/lang/String;)V

    return-object v0

    :pswitch_2f  #0x0
    new-instance v0, Landroid/content/UriMatcher;

    invoke-direct {v0, v2, v4}, Landroid/content/UriMatcher;-><init>(ILjava/lang/String;)V

    return-object v0

    nop

    :sswitch_data_36
    .sparse-switch
        0x23 -> :sswitch_16
        0x2a -> :sswitch_e
    .end sparse-switch

    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_2f  #00000000
        :pswitch_28  #00000001
    .end packed-switch
.end method


# virtual methods
.method public addURI(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 14

    if-ltz p3, :cond_5b

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_20

    move-object v2, p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_1a

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x2f

    if-ne v3, v5, :cond_1a

    invoke-virtual {p2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    :cond_1a
    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :cond_20
    if-eqz v0, :cond_23

    array-length v1, v0

    :cond_23
    move-object v2, p0

    const/4 v3, -0x1

    :goto_25
    if-ge v3, v1, :cond_58

    if-gez v3, :cond_2b

    move-object v4, p1

    goto :goto_2d

    :cond_2b
    aget-object v4, v0, v3

    :goto_2d
    iget-object v5, v2, Landroid/content/UriMatcher;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_34
    if-ge v7, v6, :cond_49

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/UriMatcher;

    iget-object v9, v8, Landroid/content/UriMatcher;->mText:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_46

    move-object v2, v8

    goto :goto_49

    :cond_46
    add-int/lit8 v7, v7, 0x1

    goto :goto_34

    :cond_49
    :goto_49
    if-ne v7, v6, :cond_55

    invoke-static {v4}, Landroid/content/UriMatcher;->createChild(Ljava/lang/String;)Landroid/content/UriMatcher;

    move-result-object v8

    iget-object v9, v2, Landroid/content/UriMatcher;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v2, v8

    :cond_55
    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    :cond_58
    iput p3, v2, Landroid/content/UriMatcher;->mCode:I

    return-void

    :cond_5b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is invalid: it must be positive"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public match(Landroid/net/Uri;)I
    .registers 15

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    move-object v2, p0

    if-nez v1, :cond_14

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_14

    iget v3, p0, Landroid/content/UriMatcher;->mCode:I

    return v3

    :cond_14
    const/4 v3, -0x1

    :goto_15
    if-ge v3, v1, :cond_6e

    if-gez v3, :cond_1e

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    goto :goto_24

    :cond_1e
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    :goto_24
    iget-object v5, v2, Landroid/content/UriMatcher;->mChildren:Ljava/util/ArrayList;

    if-nez v5, :cond_29

    goto :goto_6e

    :cond_29
    const/4 v2, 0x0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_2f
    if-ge v7, v6, :cond_67

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/UriMatcher;

    iget v9, v8, Landroid/content/UriMatcher;->mWhich:I

    packed-switch v9, :pswitch_data_72

    goto :goto_61

    :pswitch_3d  #0x2
    move-object v2, v8

    goto :goto_61

    :pswitch_3f  #0x1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x0

    :goto_44
    if-ge v10, v9, :cond_56

    invoke-virtual {v4, v10}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x30

    if-lt v11, v12, :cond_61

    const/16 v12, 0x39

    if-le v11, v12, :cond_53

    goto :goto_61

    :cond_53
    add-int/lit8 v10, v10, 0x1

    goto :goto_44

    :cond_56
    move-object v2, v8

    goto :goto_61

    :pswitch_58  #0x0
    iget-object v9, v8, Landroid/content/UriMatcher;->mText:Ljava/lang/String;

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_61

    move-object v2, v8

    :cond_61
    :goto_61
    if-eqz v2, :cond_64

    goto :goto_67

    :cond_64
    add-int/lit8 v7, v7, 0x1

    goto :goto_2f

    :cond_67
    :goto_67
    if-nez v2, :cond_6b

    const/4 v7, -0x1

    return v7

    :cond_6b
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    :cond_6e
    :goto_6e
    iget v3, v2, Landroid/content/UriMatcher;->mCode:I

    return v3

    nop

    :pswitch_data_72
    .packed-switch 0x0
        :pswitch_58  #00000000
        :pswitch_3f  #00000001
        :pswitch_3d  #00000002
    .end packed-switch
.end method
