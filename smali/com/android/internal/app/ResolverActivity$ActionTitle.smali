# classes4.dex

.class final enum Lcom/android/internal/app/ResolverActivity$ActionTitle;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ActionTitle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/app/ResolverActivity$ActionTitle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/app/ResolverActivity$ActionTitle;

.field public static final BROWSABLE_APP_TITLE_RES:I = 0x10409d3

.field public static final BROWSABLE_HOST_APP_TITLE_RES:I = 0x10409d1

.field public static final BROWSABLE_HOST_TITLE_RES:I = 0x10409d0

.field public static final BROWSABLE_TITLE_RES:I = 0x10409d2

.field public static final enum CAPTURE_IMAGE:Lcom/android/internal/app/ResolverActivity$ActionTitle;

.field public static final enum DEFAULT:Lcom/android/internal/app/ResolverActivity$ActionTitle;

.field public static final enum EDIT:Lcom/android/internal/app/ResolverActivity$ActionTitle;

.field public static final enum HOME:Lcom/android/internal/app/ResolverActivity$ActionTitle;

.field public static final enum SEND:Lcom/android/internal/app/ResolverActivity$ActionTitle;

.field public static final enum SENDTO:Lcom/android/internal/app/ResolverActivity$ActionTitle;

.field public static final enum SEND_MULTIPLE:Lcom/android/internal/app/ResolverActivity$ActionTitle;

.field public static final enum VIEW:Lcom/android/internal/app/ResolverActivity$ActionTitle;


# instance fields
.field public final action:Ljava/lang/String;

.field public final labelRes:I

.field public final namedTitleRes:I

.field public final titleRes:I


# direct methods
.method static constructor <clinit>()V
    .registers 22

    new-instance v7, Lcom/android/internal/app/ResolverActivity$ActionTitle;

    const-string v1, "VIEW"

    const/4 v2, 0x0

    const-string v3, "android.intent.action.VIEW"

    const v4, 0x10409da

    const v5, 0x10409dc

    const v6, 0x10409db

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/app/ResolverActivity$ActionTitle;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v7, Lcom/android/internal/app/ResolverActivity$ActionTitle;->VIEW:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    new-instance v0, Lcom/android/internal/app/ResolverActivity$ActionTitle;

    const-string v9, "EDIT"

    const/4 v10, 0x1

    const-string v11, "android.intent.action.EDIT"

    const v12, 0x10409c6

    const v13, 0x10409c8

    const v14, 0x10409c7

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/android/internal/app/ResolverActivity$ActionTitle;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v0, Lcom/android/internal/app/ResolverActivity$ActionTitle;->EDIT:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    new-instance v1, Lcom/android/internal/app/ResolverActivity$ActionTitle;

    const-string v16, "SEND"

    const/16 v17, 0x2

    const-string v18, "android.intent.action.SEND"

    const v19, 0x10409d4

    const v20, 0x10409d6

    const v21, 0x10409d5

    move-object v15, v1

    invoke-direct/range {v15 .. v21}, Lcom/android/internal/app/ResolverActivity$ActionTitle;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v1, Lcom/android/internal/app/ResolverActivity$ActionTitle;->SEND:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    new-instance v2, Lcom/android/internal/app/ResolverActivity$ActionTitle;

    const-string v9, "SENDTO"

    const/4 v10, 0x3

    const-string v11, "android.intent.action.SENDTO"

    const v12, 0x10409d7

    const v13, 0x10409d9

    const v14, 0x10409d8

    move-object v8, v2

    invoke-direct/range {v8 .. v14}, Lcom/android/internal/app/ResolverActivity$ActionTitle;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v2, Lcom/android/internal/app/ResolverActivity$ActionTitle;->SENDTO:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    new-instance v3, Lcom/android/internal/app/ResolverActivity$ActionTitle;

    const-string v16, "SEND_MULTIPLE"

    const/16 v17, 0x4

    const-string v18, "android.intent.action.SEND_MULTIPLE"

    move-object v15, v3

    invoke-direct/range {v15 .. v21}, Lcom/android/internal/app/ResolverActivity$ActionTitle;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v3, Lcom/android/internal/app/ResolverActivity$ActionTitle;->SEND_MULTIPLE:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    new-instance v4, Lcom/android/internal/app/ResolverActivity$ActionTitle;

    const-string v9, "CAPTURE_IMAGE"

    const/4 v10, 0x5

    const-string v11, "android.media.action.IMAGE_CAPTURE"

    const v12, 0x10409cd

    const v13, 0x10409cf

    const v14, 0x10409ce

    move-object v8, v4

    invoke-direct/range {v8 .. v14}, Lcom/android/internal/app/ResolverActivity$ActionTitle;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v4, Lcom/android/internal/app/ResolverActivity$ActionTitle;->CAPTURE_IMAGE:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    new-instance v5, Lcom/android/internal/app/ResolverActivity$ActionTitle;

    const-string v16, "DEFAULT"

    const/16 v17, 0x6

    const/16 v18, 0x0

    const v19, 0x10409c3

    const v20, 0x10409c5

    const v21, 0x10409c4

    move-object v15, v5

    invoke-direct/range {v15 .. v21}, Lcom/android/internal/app/ResolverActivity$ActionTitle;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v5, Lcom/android/internal/app/ResolverActivity$ActionTitle;->DEFAULT:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    new-instance v6, Lcom/android/internal/app/ResolverActivity$ActionTitle;

    const-string v9, "HOME"

    const/4 v10, 0x7

    const-string v11, "android.intent.action.MAIN"

    const v12, 0x10409ca

    const v13, 0x10409cc

    const v14, 0x10409cb

    move-object v8, v6

    invoke-direct/range {v8 .. v14}, Lcom/android/internal/app/ResolverActivity$ActionTitle;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v6, Lcom/android/internal/app/ResolverActivity$ActionTitle;->HOME:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    const/16 v8, 0x8

    new-array v8, v8, [Lcom/android/internal/app/ResolverActivity$ActionTitle;

    const/4 v9, 0x0

    aput-object v7, v8, v9

    const/4 v7, 0x1

    aput-object v0, v8, v7

    const/4 v0, 0x2

    aput-object v1, v8, v0

    const/4 v0, 0x3

    aput-object v2, v8, v0

    const/4 v0, 0x4

    aput-object v3, v8, v0

    const/4 v0, 0x5

    aput-object v4, v8, v0

    const/4 v0, 0x6

    aput-object v5, v8, v0

    const/4 v0, 0x7

    aput-object v6, v8, v0

    sput-object v8, Lcom/android/internal/app/ResolverActivity$ActionTitle;->$VALUES:[Lcom/android/internal/app/ResolverActivity$ActionTitle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;III)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "III)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/android/internal/app/ResolverActivity$ActionTitle;->action:Ljava/lang/String;

    iput p4, p0, Lcom/android/internal/app/ResolverActivity$ActionTitle;->titleRes:I

    iput p5, p0, Lcom/android/internal/app/ResolverActivity$ActionTitle;->namedTitleRes:I

    iput p6, p0, Lcom/android/internal/app/ResolverActivity$ActionTitle;->labelRes:I

    return-void
.end method

.method public static forAction(Ljava/lang/String;)Lcom/android/internal/app/ResolverActivity$ActionTitle;
    .registers 6

    invoke-static {}, Lcom/android/internal/app/ResolverActivity$ActionTitle;->values()[Lcom/android/internal/app/ResolverActivity$ActionTitle;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_1c

    aget-object v3, v0, v2

    sget-object v4, Lcom/android/internal/app/ResolverActivity$ActionTitle;->HOME:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    if-eq v3, v4, :cond_19

    if-eqz p0, :cond_19

    iget-object v4, v3, Lcom/android/internal/app/ResolverActivity$ActionTitle;->action:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    return-object v3

    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_1c
    sget-object v0, Lcom/android/internal/app/ResolverActivity$ActionTitle;->DEFAULT:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/app/ResolverActivity$ActionTitle;
    .registers 2

    const-class v0, Lcom/android/internal/app/ResolverActivity$ActionTitle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverActivity$ActionTitle;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/app/ResolverActivity$ActionTitle;
    .registers 1

    sget-object v0, Lcom/android/internal/app/ResolverActivity$ActionTitle;->$VALUES:[Lcom/android/internal/app/ResolverActivity$ActionTitle;

    invoke-virtual {v0}, [Lcom/android/internal/app/ResolverActivity$ActionTitle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/app/ResolverActivity$ActionTitle;

    return-object v0
.end method
