<Frame
  id="$header"
  enableFullBleed={null}
  isHiddenOnDesktop={false}
  isHiddenOnMobile={true}
  padding="8px 12px"
  sticky={true}
  type="header"
>
  <Container
    id="stack1"
    _flexWrap={true}
    _gap="0px"
    _justify="end"
    _type="stack"
    footerPadding="4px 12px"
    headerPadding="4px 12px"
    margin="0"
    padding="0"
    showBody={true}
    style={{ map: { border: "rgba(255, 255, 255, 0)" } }}
  >
    <View id="338b5" viewKey="View 1">
      <Button
        id="button4"
        iconBefore="bold/interface-alert-alarm-bell-2"
        style={{ background: "surfacePrimary", border: "rgba(0, 0, 0, 0.24)" }}
      />
      <Avatar
        id="avatar1"
        fallback="{{ current_user.fullName }}"
        imageSize={32}
        label="{{ current_user.fullName }}"
        labelCaption="{{ current_user.email }}"
        src="{{ current_user.profilePhotoUrl }}"
        style={{ map: { background: "automatic" } }}
      />
      <Button
        id="button2"
        iconBefore="bold/interface-setting-cog"
        style={{ background: "surfacePrimary", border: "rgba(0, 0, 0, 0.24)" }}
      >
        <Event
          event="click"
          method="trigger"
          params={{}}
          pluginId=""
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Button>
      <Button
        id="button3"
        iconBefore="bold/mail-chat-bubble-oval-question"
        style={{ background: "surfacePrimary", border: "rgba(0, 0, 0, 0.24)" }}
        text="Support"
      />
    </View>
  </Container>
</Frame>
