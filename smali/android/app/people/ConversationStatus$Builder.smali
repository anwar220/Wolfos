# classes.dex

.class public final Landroid/app/people/ConversationStatus$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/people/ConversationStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field final mActivity:I

.field mAvailability:I

.field mDescription:Ljava/lang/CharSequence;

.field mEndTimeMs:J

.field mIcon:Landroid/graphics/drawable/Icon;

.field final mId:Ljava/lang/String;

.field mStartTimeMs:J


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/app/people/ConversationStatus$Builder;->mAvailability:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/app/people/ConversationStatus$Builder;->mStartTimeMs:J

    iput-wide v0, p0, Landroid/app/people/ConversationStatus$Builder;->mEndTimeMs:J

    iput-object p1, p0, Landroid/app/people/ConversationStatus$Builder;->mId:Ljava/lang/String;

    iput p2, p0, Landroid/app/people/ConversationStatus$Builder;->mActivity:I

    return-void
.end method


# virtual methods
.method public build()Landroid/app/people/ConversationStatus;
    .registers 3

    new-instance v0, Landroid/app/people/ConversationStatus;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/app/people/ConversationStatus;-><init>(Landroid/app/people/ConversationStatus$Builder;Landroid/app/people/ConversationStatus-IA;)V

    return-object v0
.end method

.method public setAvailability(I)Landroid/app/people/ConversationStatus$Builder;
    .registers 2

    iput p1, p0, Landroid/app/people/ConversationStatus$Builder;->mAvailability:I

    return-object p0
.end method

.method public setDescription(Ljava/lang/CharSequence;)Landroid/app/people/ConversationStatus$Builder;
    .registers 2

    iput-object p1, p0, Landroid/app/people/ConversationStatus$Builder;->mDescription:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setEndTimeMillis(J)Landroid/app/people/ConversationStatus$Builder;
    .registers 3

    iput-wide p1, p0, Landroid/app/people/ConversationStatus$Builder;->mEndTimeMs:J

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Icon;)Landroid/app/people/ConversationStatus$Builder;
    .registers 2

    iput-object p1, p0, Landroid/app/people/ConversationStatus$Builder;->mIcon:Landroid/graphics/drawable/Icon;

    return-object p0
.end method

.method public setStartTimeMillis(J)Landroid/app/people/ConversationStatus$Builder;
    .registers 3

    iput-wide p1, p0, Landroid/app/people/ConversationStatus$Builder;->mStartTimeMs:J

    return-object p0
.end method
